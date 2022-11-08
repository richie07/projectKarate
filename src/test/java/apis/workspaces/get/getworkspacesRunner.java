package apis.workspaces.get;

import com.intuit.karate.junit5.Karate;

public class getworkspacesRunner {

    @Karate.Test
    Karate testWorkSpaces() {
        return Karate.run("getworkspaces").relativeTo(getClass());
    }
}
