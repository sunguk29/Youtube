function createReviewElement(review) {
    return `<div class="comment_append">
        <div class="comment_append">
            <div id="comment_appends"></div>
            <img src="../../resources/css/img/human.jpg" class="align-self-start mr-3"
                 style='width: 30px; height: 30px; border-radius: 26px'>
                <div class="comment_append_contents">
                    <div class="comment_append_accounttime">
                        <div class="comment_append_account"> dddd</div>
                        <div class="comment_append_time"> ${review.insert_reg_datetime} </div>
                    </div>
                    <div class="comment_append_maincomment"> ${review.content} </div>
                    <div class="comment_append_morecontainner">
                        <div class="comment_append_like"><i class="fa-regular fa-thumbs-up comment_like"></i>&nbsp6
                        </div>
                        <div class="comment_append_dislike"><i class="fa-regular fa-thumbs-down"></i>&nbsp8
                        </div>
                        <button class="comment_append_morecomment">답글</button>
                    </div>
                </div>
            </div>
        </div>`;
}