package apis.workspaces.delete;

import com.intuit.karate.junit5.Karate;

public class deleteworkspacesRunner {

    @Karate.Test
    Karate testWorkSpaces() {
        return Karate.run("deleteworkspaces").relativeTo(getClass());
    }
}
