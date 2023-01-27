# zsh_theme
This theme is built on the classic lukerandall theme which closely resembles bash.  Added to this theme is extra information on the prompt when using the command line utility screen.  When using screen the session name will appear in purple square brackets to inform the user which session they are using.  This is useful when switching between multiple sessions for handling different tasks.

# quick start
## Using screen to create a new session
start a session with the name hello_world:
> screen -S hello_world
## Exit the session
Within the session:
> exit
## Session switching
exit to the main terminal with the control sequence hold \<CTRL\> then press \<A\> then \<D\>
## Rejoin an exisiting session
> screen -Rd hello_world
## Multisession use
Screen sessions can be viewed in multiple terminals.
> screen -x hello_world
## Kill an unresponsive session
> screen -X -S hello_world kill
