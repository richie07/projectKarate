package scala.performance

import com.intuit.karate.gatling.PreDef._
import io.gatling.core.Predef._
import scala.concurrent.duration._

class PerfTest extends Simulation {

  val protocol = karateProtocol()

  val consultworkspace = scenario("consulta workspace").exec(karateFeature("classpath:scala/performance/getworkspaces2.feature"))

  setUp(
    consultworkspace.inject(
      atOnceUsers(1)
    ).protocols(protocol)
  )

}