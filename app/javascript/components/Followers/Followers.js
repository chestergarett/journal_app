import React from 'react';
import classes from './Followers.module.css';
import {CgProfile} from 'react-icons/cg'

const Followers = (props) => {
    return(
        <div className={classes.main}>
            <h2>Who to Follow?</h2>
            <ul className={classes.list}>
                {props.users.map(user=>{
                    return(
                        <a href={`/users/${user.id}`} key={user.email}>
                            <li className={classes.listItems}>
                                <CgProfile size={20}/>
                                <div className={classes.listItemText}>
                                    <span className={classes.listItemName}>{user.username}</span>
                                    <span>{user.email}</span>
                                </div>
                            </li>
                        </a>
                    )
                })}
            </ul>
            <a href="/users" className={classes.showMore}>See More</a>
        </div>
    )
}

export default Followers;   