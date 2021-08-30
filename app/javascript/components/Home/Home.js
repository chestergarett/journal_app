import React from 'react';
import classes from './Home.module.css';
import {Tooltip} from '@material-ui/core';
import {FcGoogle} from 'react-icons/fc';
import {FaApple} from 'react-icons/fa';


const Home = (props) => {

    return (
        <div className={classes.mainContainer}> 
            <div className={classes.bodyContainer}>
                <div className={classes.bodyLogo}>
                    <svg viewBox="0 0 24 24" aria-hidden="true" className={classes.bodyLogoMain}>
                        <g><path d="M23.643 4.937c-.835.37-1.732.62-2.675.733.962-.576 1.7-1.49 2.048-2.578-.9.534-1.897.922-2.958 1.13-.85-.904-2.06-1.47-3.4-1.47-2.572 0-4.658 2.086-4.658 4.66 0 .364.042.718.12 1.06-3.873-.195-7.304-2.05-9.602-4.868-.4.69-.63 1.49-.63 2.342 0 1.616.823 3.043 2.072 3.878-.764-.025-1.482-.234-2.11-.583v.06c0 2.257 1.605 4.14 3.737 4.568-.392.106-.803.162-1.227.162-.3 0-.593-.028-.877-.082.593 1.85 2.313 3.198 4.352 3.234-1.595 1.25-3.604 1.995-5.786 1.995-.376 0-.747-.022-1.112-.065 2.062 1.323 4.51 2.093 7.14 2.093 8.57 0 13.255-7.098 13.255-13.254 0-.2-.005-.402-.014-.602.91-.658 1.7-1.477 2.323-2.41z"></path></g>
                    </svg>
                </div>
                <div className={classes.bodyLinks}>
                    <div className={classes.linkLogo}>
                    <svg viewBox="0 0 24 24" aria-hidden="true" className={classes.bodyLinkLogo}>
                        <g><path d="M23.643 4.937c-.835.37-1.732.62-2.675.733.962-.576 1.7-1.49 2.048-2.578-.9.534-1.897.922-2.958 1.13-.85-.904-2.06-1.47-3.4-1.47-2.572 0-4.658 2.086-4.658 4.66 0 .364.042.718.12 1.06-3.873-.195-7.304-2.05-9.602-4.868-.4.69-.63 1.49-.63 2.342 0 1.616.823 3.043 2.072 3.878-.764-.025-1.482-.234-2.11-.583v.06c0 2.257 1.605 4.14 3.737 4.568-.392.106-.803.162-1.227.162-.3 0-.593-.028-.877-.082.593 1.85 2.313 3.198 4.352 3.234-1.595 1.25-3.604 1.995-5.786 1.995-.376 0-.747-.022-1.112-.065 2.062 1.323 4.51 2.093 7.14 2.093 8.57 0 13.255-7.098 13.255-13.254 0-.2-.005-.402-.014-.602.91-.658 1.7-1.477 2.323-2.41z"></path></g>
                    </svg>
                    </div>
                    <div className={classes.linkHeading}>
                        <h2>Happening now</h2>
                        <p>Join Bwitter today. </p>    
                    </div>
                    <div className={classes.linkButtons}>
                        <Tooltip title="Feature not yet available">
                            <div className={classes.linkButtonsMain}>
                                    <FcGoogle className={classes.linkButtonsIcons}/>
                                    <span>Sign up with Google</span>
                            </div>
                        </Tooltip>
                        <Tooltip title="Feature not yet available">
                            <div className={classes.linkButtonsMain}>
                                <FaApple className={classes.linkButtonsIcons}/>
                                <span>Sign up with Facebook</span>
                            </div>
                        </Tooltip>
                        <div className={classes.linkButtonsMain}>
                            <a href={`${props.signup}`}>Sign up with Email</a>
                        </div>
                    </div>
                    <div className={classes.linkInstructions}>
                        <p>
                            By signing up, you agree to the <span>Terms of Service</span> and <span>Privacy Policy</span>, including <span>Cookie Use.</span>
                        </p>
                    </div>
                    <div className={classes.linkLogin}>
                        <p> Already have an account? <a href={`${props.login}`}>Log in</a></p>
                    </div>
                </div>
            </div>
            <div className={classes.footerContainer}>
                <span> About </span>
                <span> Help Center </span>
                <span> Terms of Service </span>
                <span> Privacy Policy </span>
                <span> Cookie Policy </span>
                <span> Ads Info </span>
                <span> Blog </span>
                <span> Status </span>
                <span> Careers </span>
                <span> Brand Resources </span>
                <span> Advertising </span>
                <span> Marketing </span>
                <span> Bwitter for Business </span>
                <span> Developers </span>
                <span> Directory </span>
                <span> Settings </span>
                <a href="https://github.com/chestergarett/journal_app" target="_blank"> &#169; Chester Garett </a>
            </div>    
        </div>
    )
}

export default Home;