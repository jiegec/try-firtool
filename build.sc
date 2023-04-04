import mill._
import mill.scalalib._
import mill.scalalib.publish._
import coursier.maven.MavenRepository

val defaultVersions = Map(
  "chisel3" -> "3.6.0-RC2",
  "chisel3-plugin" -> "3.6.0-RC2"
)

val commonScalaVersion = "2.13.10"

def getVersion(
    dep: String,
    org: String = "edu.berkeley.cs",
    cross: Boolean = false
) = {
  val version = sys.env.getOrElse(dep + "Version", defaultVersions(dep))
  if (cross)
    ivy"$org:::$dep:$version"
  else
    ivy"$org::$dep:$version"
}

object hardfloat extends SbtModule {
  def scalaVersion = commonScalaVersion

  override def millSourcePath =
    os.pwd / "submodules" / "berkeley-hardfloat"

  override def ivyDeps = Agg(
    getVersion("chisel3")
  )

  override def scalacPluginIvyDeps = Agg(
    getVersion("chisel3-plugin", cross = true)
  )
}

object tryFirtool extends SbtModule {
  def scalaVersion = commonScalaVersion

  override def millSourcePath =
    os.pwd

  override def ivyDeps = Agg(
    getVersion("chisel3")
  )

  override def scalacPluginIvyDeps = Agg(
    getVersion("chisel3-plugin", cross = true)
  )

  override def moduleDeps =
    Seq(hardfloat)

}
