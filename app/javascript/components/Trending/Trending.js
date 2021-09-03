import React from 'react';
import classes from './Trending.module.css';
import {IoCreateOutline} from 'react-icons/io5'


const Trending = (props) => {
    return(
        <div className={classes.main}>
            <div className={classes.mainHeader}>
                <h2>Trends for you </h2>
                <a href={props.new} style={{cursor: 'pointer'}}>
                    <IoCreateOutline size={20}/>
                </a>
            </div>
            <div className={classes.mainTopics}>
                {props.topics.map(topic=>{
                    return(
                        <a href={`/topics/${topic.id}`} key={topic.topic} >
                            <div id={topic.topic} className={classes.items}>
                                <span>{topic.topic}</span>
                                <span>{topic.topic.tweets}</span>
                            </div>
                        </a>
                    )
                })}
            </div>
            <a href="/topics" className={classes.showMore}>Show More </a>
        </div>            
    )
}


export default Trending;