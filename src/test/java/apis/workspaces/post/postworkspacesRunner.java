package apis.workspaces.post;

import com.intuit.karate.junit5.Karate;

public class postworkspacesRunner {

    @Karate.Test
    Karate testWorkSpaces() {
        return Karate.run("postworkspaces").relativeTo(getClass());
    }
}
