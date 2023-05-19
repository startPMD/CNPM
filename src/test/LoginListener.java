package test;

import java.util.EventListener;

public interface LoginListener extends EventListener {
    public void loginPerformed(LoginEvent event);
}