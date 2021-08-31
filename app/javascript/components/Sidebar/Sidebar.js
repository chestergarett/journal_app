import React from 'react';
import classes from './Sidebar.module.css';
import {FaTwitter,FaHashtag,FaRegBell,FaRegEnvelope,FaRegBookmark,FaLock} from 'react-icons/fa';
import {RiHome7Fill} from 'react-icons/ri';
import {BiSpreadsheet} from 'react-icons/bi';
import {CgProfile,CgMoreO} from 'react-icons/cg';

const Sidebar = (props) => {
    
    return (
        <div className={classes.sidebar}>
            <div className={classes.upperSidebar}>
                <div className={classes.items2}>
                    <FaTwitter size={30} className={classes.icons}/>
                </div>
                <div className={classes.items}>
                    <RiHome7Fill size={30} className={classes.icons}/>
                    <span>Home</span>
                </div>
                <div className={classes.items}>
                    <FaHashtag size={30} className={classes.icons}/>
                    <span>Explore</span>
                </div>
                <div className={classes.items}>
                    <FaRegBell size={30} className={classes.icons}/>
                    <span>Notifications</span>
                </div>
                <div className={classes.items}>
                    <FaRegEnvelope size={30} className={classes.icons}/>
                    <span>Messages</span>
                </div>
                <div className={classes.items}>
                    <FaRegBookmark size={30} className={classes.icons}/>
                    <span>Bookmarks</span>
                </div>
                <div className={classes.items}>
                    <BiSpreadsheet size={30} className={classes.icons}/>
                    <span>Lists</span>
                </div>
                <div className={classes.items}>
                    <CgProfile size={30} className={classes.icons}/>
                    <span>Profile</span>
                </div>
                <div className={classes.items}>
                    <CgMoreO size={30} className={classes.icons}/>
                    <span>More</span>
                </div>
                <div className={classes.items2}>
                    <button className={classes.itemButton}>Bweet</button>
                </div>
            </div>
            <div className={classes.lowerSidebar}>
                <div className={classes.profilePicture}>
                    <CgProfile size={30}/>
                </div>
                <div className={classes.profileDetails}>
                    <div>Username &nbsp;<FaLock size={15}/></div>
                    <div>Email {props.logout}</div>
                </div>
            </div>
        </div>
    )
}

export default Sidebar;