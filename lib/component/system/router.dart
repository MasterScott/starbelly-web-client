/**
 * This file is currently unused.
 *
 * I created it to mimic the structures under component/policy and
 * component/results, but it turns out that all routes in a subrouter like
 * this will trigger the router-link-active class, which is a problem for
 * links that are placed into a submenu together: activating one link activates
 * all the other links, too.
 *
 * So for the time being, I moved the system routes into app.dart. In the
 * future, Angular may provide a workaround for this issue and then I would be
 * able to move those routes back in here.
 */
