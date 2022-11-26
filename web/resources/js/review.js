function createReviewElement(review) {
    return `<div className="comment_append">
        <div className="comment_append">
            <div id="comment_appends"></div>
            <img src="../../resources/css/img/human.jpg" className="align-self-start mr-3"
                 style='width: 30px; height: 30px; border-radius: 26px'>
                <div className="comment_append_contents">
                    <div className="comment_append_accounttime">
                        <div className="comment_append_account"> dddd</div>
                        <div className="comment_append_time"> ${item.reg_datetime} </div>
                    </div>
                    <div className="comment_append_maincomment"> ${item.content} </div>
                    <div className="comment_append_morecontainner">
                        <div className="comment_append_like"><i className="fa-regular fa-thumbs-up comment_like"></i>&nbsp6
                        </div>
                        <div className="comment_append_dislike"><i className="fa-regular fa-thumbs-down"></i>&nbsp8
                        </div>
                        <button className="comment_append_morecomment">답글</button>
                    </div>
                </div>
            </div>
        </div>`;
}