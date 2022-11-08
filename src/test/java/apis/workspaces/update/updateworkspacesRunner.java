package apis.workspaces.update;

import com.intuit.karate.junit5.Karate;

public class updateworkspacesRunner {

    @Karate.Test
    Karate testWorkSpaces() {
        return Karate.run("updateworkspaces").relativeTo(getClass());
    }
}
