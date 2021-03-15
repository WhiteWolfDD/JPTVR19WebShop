<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body translate="no">
<div class="container">
    <div class="row">
        <div class="col-lg-4">
            <div class="nav nav-pills faq-nav" id="faq-tabs" role="tablist" aria-orientation="vertical">
                <a href="#tab1" class="nav-link active show" data-toggle="pill" role="tab" aria-controls="tab1" aria-selected="true" style="display: flex; flex-direction: row">
                    <i style="margin-top: -1px; margin-right: 5px">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-question-circle-fill" viewBox="0 0 16 16">
                            <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zM5.496 6.033h.825c.138 0 .248-.113.266-.25.09-.656.54-1.134 1.342-1.134.686 0 1.314.343 1.314 1.168 0 .635-.374.927-.965 1.371-.673.489-1.206 1.06-1.168 1.987l.003.217a.25.25 0 0 0 .25.246h.811a.25.25 0 0 0 .25-.25v-.105c0-.718.273-.927 1.01-1.486.609-.463 1.244-.977 1.244-2.056 0-1.511-1.276-2.241-2.673-2.241-1.267 0-2.655.59-2.75 2.286a.237.237 0 0 0 .241.247zm2.325 6.443c.61 0 1.029-.394 1.029-.927 0-.552-.42-.94-1.029-.94-.584 0-1.009.388-1.009.94 0 .533.425.927 1.01.927z"></path>
                        </svg>
                    </i> Frequently Asked Questions
                </a>
                <a href="#tab2" class="nav-link" data-toggle="pill" role="tab" aria-controls="tab2" aria-selected="false" style="display: flex; flex-direction: row">
                    <i style="margin-top: -1px; margin-right: 5px">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                        </svg>
                    </i> Profile
                </a>
                <a href="#tab3" class="nav-link" data-toggle="pill" role="tab" aria-controls="tab3" aria-selected="false" style="display: flex; flex-direction: row">
                    <i style="margin-top: -1px; margin-right: 5px">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-lines-fill" viewBox="0 0 16 16">
                            <path d="M6 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm-5 6s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zM11 3.5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 0 1h-4a.5.5 0 0 1-.5-.5zm.5 2.5a.5.5 0 0 0 0 1h4a.5.5 0 0 0 0-1h-4zm2 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2zm0 3a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1h-2z"></path>
                        </svg>
                    </i> Account
                </a>
                <a href="#tab4" class="nav-link" data-toggle="pill" role="tab" aria-controls="tab4" aria-selected="false" style="display: flex; flex-direction: row">
                    <i style="margin-top: -1px; margin-right: 5px">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314z"></path>
                        </svg>
                    </i> Favorites
                </a>
                <a href="#tab5" class="nav-link" data-toggle="pill" role="tab" aria-controls="tab5" aria-selected="false" style="display: flex; flex-direction: row">
                    <i style="margin-top: -1px; margin-right: 5px">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash-stack" viewBox="0 0 16 16">
                            <path d="M1 3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1H1zm7 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"></path>
                            <path d="M0 5a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V5zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V7a2 2 0 0 1-2-2H3z"></path>
                        </svg>
                    </i> Transactions
                </a>
                <a href="#tab6" class="nav-link" data-toggle="pill" role="tab" aria-controls="tab6" aria-selected="false" style="display: flex; flex-direction: row">
                    <i style="margin-top: -1px; margin-right: 5px">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-check-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M15.854 5.146a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708 0l-1.5-1.5a.5.5 0 0 1 .708-.708L12.5 7.793l2.646-2.647a.5.5 0 0 1 .708 0z"></path>
                            <path d="M1 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H1zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"></path>
                        </svg>
                    </i> General help
                </a>
            </div>
        </div>
        <div class="col-lg-8">
            <div class="tab-content" id="faq-tab-content">
                <div class="tab-pane active show" id="tab1" role="tabpanel" aria-labelledby="tab1">
                    <div class="accordion" id="accordion-tab-1">
                        <div class="card">
                            <div class="card-header" id="accordion-tab-1-heading-1">
                                <h5>
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#accordion-tab-1-content-1" aria-expanded="false" aria-controls="accordion-tab-1-content-1" style="text-decoration: none">Just once I'd like to eat dinner with a celebrity?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-1-content-1" aria-labelledby="accordion-tab-1-heading-1" data-parent="#accordion-tab-1" style="">
                                <div class="card-body">
                                    <p>Yes, if you make it look like an electrical fire. When you do things right, people won't be sure you've done anything at all. I was having the most wonderful dream. Except you were there, and you were there, and you were there! No argument here. Goodbye, cruel world. Goodbye, cruel lamp. Goodbye, cruel velvet drapes, lined with what would appear to be some sort of cruel muslin and the cute little pom-pom curtain pull cords. Cruel though they may be.</p>
                                    <p><strong>Example: </strong>Shut up and get to the point!</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-1-heading-2">
                                <h5>
                                    <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#accordion-tab-1-content-2" aria-expanded="false" aria-controls="accordion-tab-1-content-2" style="text-decoration: none">Bender, I didn't know you liked cooking?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-1-content-2" aria-labelledby="accordion-tab-1-heading-2" data-parent="#accordion-tab-1" style="">
                                <div class="card-body">
                                    <p>That's so cute. Can we have Bender Burgers again? Is the Space Pope reptilian!? I wish! It's a nickel. Bender! Ship! Stop bickering or I'm going to come back there and change your opinions manually!</p>
                                    <p><strong>Example: </strong>Okay, I like a challenge. Is that a cooking show? No argument here.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-1-heading-3">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-1-content-3" aria-expanded="true" aria-controls="accordion-tab-1-content-3" style="text-decoration: none">My fellow Earthicans?</button>
                                </h5>
                            </div>
                            <div class="collapse show" id="accordion-tab-1-content-3" aria-labelledby="accordion-tab-1-heading-3" data-parent="#accordion-tab-1" style="">
                                <div class="card-body">
                                    <p>As I have explained in my book 'Earth in the Balance', and the much more popular 'Harry Potter and the Balance of Earth', we need to defend our planet against pollution. Also dark wizards. Fry, you can't just sit here in the dark listening to classical music.</p>
                                    <p><strong>Example: </strong>Actually, that's still true. Well, let's just dump it in the sewer and say we delivered it.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-1-heading-4">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-1-content-4" aria-expanded="false" aria-controls="accordion-tab-1-content-4" style="text-decoration: none">Who am I making this out to?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-1-content-4" aria-labelledby="accordion-tab-1-heading-4" data-parent="#accordion-tab-1">
                                <div class="card-body">
                                    <p>Morbo can't understand his teleprompter because he forgot how you say that letter that's shaped like a man wearing a hat. Also Zoidberg. Can we have Bender Burgers again? Goodbye, cruel world. Goodbye, cruel lamp. Goodbye, cruel velvet drapes, lined with what would appear to be some sort of cruel muslin and the cute little pom-pom curtain pull cords.</p>
                                    <p><strong>Example: </strong>Cruel though they may be...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab2" role="tabpanel" aria-labelledby="tab2">
                    <div class="accordion" id="accordion-tab-2">
                        <div class="card">
                            <div class="card-header" id="accordion-tab-2-heading-1">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-2-content-1" aria-expanded="false" aria-controls="accordion-tab-2-content-1" style="text-decoration: none">Does anybody else feel jealous and aroused and worried?</button>
                                </h5>
                            </div>
                            <div class="collapse show" id="accordion-tab-2-content-1" aria-labelledby="accordion-tab-2-heading-1" data-parent="#accordion-tab-2">
                                <div class="card-body">
                                    <p>Kif, I have mated with a woman. Inform the men. This is the worst part. The calm before the battle. Bender, being God isn't easy. If you do too much, people get dependent on you, and if you do nothing, they lose hope. You have to use a light touch. Like a safecracker, or a pickpocket.</p>
                                    <p><strong>Example: </strong>There's no part of that sentence I didn't like! You, a bobsleder!? That I'd like to see!</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-2-heading-2">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-2-content-2" aria-expanded="false" aria-controls="accordion-tab-2-content-2" style="text-decoration: none">This opera's as lousy as it is brilliant?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-2-content-2" aria-labelledby="accordion-tab-2-heading-2" data-parent="#accordion-tab-2">
                                <div class="card-body">
                                    <p>Your lyrics lack subtlety. You can't just have your characters announce how they feel. That makes me feel angry! It's okay, Bender. I like cooking too. Interesting. No, wait, the other thing: tedious.</p>
                                    <p><strong>Example: </strong>Of all the friends I've had… you're the first. But I know you in the future. I cleaned your poop. Then we'll go with that data file!</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-2-heading-3">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-2-content-3" aria-expanded="false" aria-controls="accordion-tab-2-content-3" style="text-decoration: none">Who are you, my warranty?!</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-2-content-3" aria-labelledby="accordion-tab-2-heading-3" data-parent="#accordion-tab-2">
                                <div class="card-body">
                                    <p>Oh, I think we should just stay friends. I'll tell them you went down prying the wedding ring off his cold, dead finger. Aww, it's true. I've been hiding it for so long. Say it in Russian! Then throw her in the laundry room, which will hereafter be referred to as "the brig".</p>
                                    <p><strong>Example: </strong> We're rescuing ya. Robot 1-X, save my friends! And Zoidberg! <em>Then we'll go with that data file!</em> Okay, I like a challenge.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-2-heading-4">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-2-content-4" aria-expanded="false" aria-controls="accordion-tab-2-content-4" style="text-decoration: none">I haven't felt much of anything since my guinea pig died?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-2-content-4" aria-labelledby="accordion-tab-2-heading-4" data-parent="#accordion-tab-2">
                                <div class="card-body">
                                    <p>And I'm his friend Jesus. Oh right. I forgot about the battle. OK, if everyone's finished being stupid. We'll need to have a look inside you with this camera. I'm just glad my fat, ugly mama isn't alive to see this day.</p>
                                    <p><strong>Example: </strong> Isn't it true that you have been paid for your testimony? Quite possible.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab3" role="tabpanel" aria-labelledby="tab3">
                    <div class="accordion" id="accordion-tab-3">
                        <div class="card">
                            <div class="card-header" id="accordion-tab-3-heading-1">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-3-content-1" aria-expanded="false" aria-controls="accordion-tab-3-content-1" style="text-decoration: none">Michelle, I don't regret this, but I both rue and lament it?</button>
                                </h5>
                            </div>
                            <div class="collapse show" id="accordion-tab-3-content-1" aria-labelledby="accordion-tab-3-heading-1" data-parent="#accordion-tab-3">
                                <div class="card-body">
                                    <p>Look, last night was a mistake. We'll need to have a look inside you with this camera. Good news, everyone! There's a report on TV with some very bad news! You know, I was God once. You lived before you met me?!</p>
                                    <p><strong>Example: </strong>I'm Santa Claus! Pansy. That's a popular name today. Little "e", big "B"?</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-3-heading-2">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-3-content-2" aria-expanded="false" aria-controls="accordion-tab-3-content-2" style="text-decoration: none">Why am I sticky and naked?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-3-content-2" aria-labelledby="accordion-tab-3-heading-2" data-parent="#accordion-tab-3">
                                <div class="card-body">
                                    <p>Did I miss something fun? Humans dating robots is sick. You people wonder why I'm still single? It's 'cause all the fine robot sisters are dating humans! Kids don't turn rotten just from watching TV.</p>
                                    <p><strong>Example: </strong>I usually try to keep my sadness pent up inside where it can fester quietly as a mental illness.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-3-heading-3">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-3-content-3" aria-expanded="false" aria-controls="accordion-tab-3-content-3" style="text-decoration: none">Is that a cooking show?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-3-content-3" aria-labelledby="accordion-tab-3-heading-3" data-parent="#accordion-tab-3">
                                <div class="card-body">
                                    <p>OK, this has gotta stop. I'm going to remind Fry of his humanity the way only a woman can. You seem malnourished. Are you suffering from intestinal parasites? Check it out, y'all. Everyone who was invited is here. I am Singing Wind, Chief of the Martians.</p>
                                    <p><strong>Example: </strong>Man, I'm sore all over. I feel like I just went ten rounds with mighty Thor.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-3-heading-4">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-3-content-4" aria-expanded="false" aria-controls="accordion-tab-3-content-4" style="text-decoration: none">You are the last hope of the universe?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-3-content-4" aria-labelledby="accordion-tab-3-heading-4" data-parent="#accordion-tab-3">
                                <div class="card-body">
                                    <p>I don't want to be rescued. I videotape every customer that comes in here, so that I may blackmail them later. Ah, computer dating. It's like pimping, but you rarely have to use the phrase "upside your head."</p>
                                    <p><strong>Example: </strong>Tell them I hate them.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab4" role="tabpanel" aria-labelledby="tab4">
                    <div class="accordion" id="accordion-tab-4">
                        <div class="card">
                            <div class="card-header" id="accordion-tab-4-heading-1">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-4-content-1" aria-expanded="false" aria-controls="accordion-tab-4-content-1" style="text-decoration: none">You, minion. Lift my arm?</button>
                                </h5>
                            </div>
                            <div class="collapse show" id="accordion-tab-4-content-1" aria-labelledby="accordion-tab-4-heading-1" data-parent="#accordion-tab-4">
                                <div class="card-body">
                                    <p>AFTER HIM! A true inspiration for the children. What are you hacking off? Is it my torso?! 'It is!' My precious torso! I saw you with those two "ladies of the evening" at Elzars. Explain that. She also liked to shut up! Why not indeed!</p>
                                    <p><strong>Example: </strong>I feel like I was mauled by Jesus. Hello, little man. I will destroy you!</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-4-heading-2">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-4-content-2" aria-expanded="false" aria-controls="accordion-tab-4-content-2" style="text-decoration: none">No, I'm Santa Claus?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-4-content-2" aria-labelledby="accordion-tab-4-heading-2" data-parent="#accordion-tab-4">
                                <div class="card-body">
                                    <p>I meant 'physically'. Look, perhaps you could let me work for a little food? I could clean the floors or paint a fence, or service you sexually? When the lights go out, it's nobody's business what goes on between two consenting adults.</p>
                                    <p><strong>Example: </strong>Nay, I respect and admire Harold Zoid too much to beat him to death with his own Oscar.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-4-heading-3">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-4-content-3" aria-expanded="false" aria-controls="accordion-tab-4-content-3" style="text-decoration: none">Belligerent and numerous?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-4-content-3" aria-labelledby="accordion-tab-4-heading-3" data-parent="#accordion-tab-4">
                                <div class="card-body">
                                    <p>Hey, what kinda party is this? There's no booze and only one hooker. I'm just glad my fat, ugly mama isn't alive to see this day. Wow! A superpowers drug you can just rub onto your skin? You'd think it would be something you'd have to freebase. Well, let's just dump it in the sewer and say we delivered it. You guys realize you live in a sewer, right? </p>
                                    <p><strong>Example: </strong>Oh Leela! You're the only person I could turn to; you're the only person who ever loved me.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-4-heading-4">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-4-content-4" aria-expanded="false" aria-controls="accordion-tab-4-content-4" style="text-decoration: none">Take me to your leader?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-4-content-4" aria-labelledby="accordion-tab-4-heading-4" data-parent="#accordion-tab-4">
                                <div class="card-body">
                                    <p>PUNY HUMAN NUMBER ONE, PUNY HUMAN NUMBER TWO, and Morbo's good friend, Richard Nixon. Interesting. No, wait, the other thing: tedious. All I want is to be a monkey of moderate intelligence who wears a suit… that's why I'm transferring to business school! Morbo can't understand his teleprompter because he forgot how you say that letter that's shaped like a man wearing a hat.</p>
                                    <p><strong>Example: </strong>If rubbin' frozen dirt in your crotch is wrong, hey I don't wanna be right.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab5" role="tabpanel" aria-labelledby="tab5">
                    <div class="accordion" id="accordion-tab-5">
                        <div class="card">
                            <div class="card-header" id="accordion-tab-5-heading-1">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-5-content-1" aria-expanded="false" aria-controls="accordion-tab-5-content-1" style="text-decoration: none">Say what?</button>
                                </h5>
                            </div>
                            <div class="collapse show" id="accordion-tab-5-content-1" aria-labelledby="accordion-tab-5-heading-1" data-parent="#accordion-tab-5">
                                <div class="card-body">
                                    <p>That could be 'my' beautiful soul sitting naked on a couch. If I could just learn to play this stupid thing. Oh, I don't have time for this. I have to go and buy a single piece of fruit with a coupon and then return it, making people wait behind me while I complain. I'm just glad my fat, ugly mama isn't alive to see this day. For one beautiful night I knew what it was like to be a grandmother. Subjugated, yet honored. But existing is basically all I do! I never loved you.</p>
                                    <p><strong>Example: </strong>A sexy mistake. And I'd do it again!</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-5-heading-2">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-5-content-2" aria-expanded="false" aria-controls="accordion-tab-5-content-2" style="text-decoration: none">Who's brave enough to fly into something we all keep calling a death sphere?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-5-content-2" aria-labelledby="accordion-tab-5-heading-2" data-parent="#accordion-tab-5">
                                <div class="card-body">
                                    <p>Maybe I love you so much I love you no matter who you are pretending to be. Ah, the 'Breakfast Club' soundtrack! I can't wait til I'm old enough to feel ways about stuff! Now Fry, it's been a few years since medical school, so remind me.</p>
                                    <p><strong>Example: </strong>Disemboweling in your species: fatal or non-fatal?</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-5-heading-3">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-5-content-3" aria-expanded="false" aria-controls="accordion-tab-5-content-3" style="text-decoration: none">You mean while I'm sleeping in it?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-5-content-3" aria-labelledby="accordion-tab-5-heading-3" data-parent="#accordion-tab-5">
                                <div class="card-body">
                                    <p>We can't compete with Mom! Her company is big and evil! Ours is small and neutral! Look, everyone wants to be like Germany, but do we really have the pure strength of 'will'? I just told you! You've killed me!</p>
                                    <p><strong>Example: </strong>But, like most politicians, he promised more than he could deliver.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-5-heading-4">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-5-content-4" aria-expanded="false" aria-controls="accordion-tab-5-content-4" style="text-decoration: none">And until then, I can never die?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-5-content-4" aria-labelledby="accordion-tab-5-heading-4" data-parent="#accordion-tab-5">
                                <div class="card-body">
                                    <p>I don't know what you did, Fry, but once again, you screwed up! Now all the planets are gonna start cracking wise about our mamas. Well, let's just dump it in the sewer and say we delivered it.</p>
                                    <p><strong>Example: </strong>Have you ever tried just turning off the TV, sitting down with your children, and hitting them? Hey, tell me something. You've got all this money. How come you always dress like you're doing your laundry?</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane" id="tab6" role="tabpanel" aria-labelledby="tab6">
                    <div class="accordion" id="accordion-tab-6">
                        <div class="card">
                            <div class="card-header" id="accordion-tab-6-heading-1">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-6-content-1" aria-expanded="false" aria-controls="accordion-tab-6-content-1" style="text-decoration: none">Doomsday device?</button>
                                </h5>
                            </div>
                            <div class="collapse show" id="accordion-tab-6-content-1" aria-labelledby="accordion-tab-6-heading-1" data-parent="#accordion-tab-6">
                                <div class="card-body">
                                    <p>Ah, now the ball's in Farnsworth's court! We'll need to have a look inside you with this camera. Stop it, stop it. It's fine. I will 'destroy' you! Bender! Ship! Stop bickering or I'm going to come back there and change your opinions manually!</p>
                                    <p><strong>Example: </strong>So I really am important? How I feel when I'm drunk is correct?</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-6-heading-2">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-6-content-2" aria-expanded="false" aria-controls="accordion-tab-6-content-2" style="text-decoration: none">And so we say goodbye to our beloved pet, Nibbler?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-6-content-2" aria-labelledby="accordion-tab-6-heading-2" data-parent="#accordion-tab-6">
                                <div class="card-body">
                                    <p>Nibbler, who's gone to a place where I, too, hope one day to go. The toilet. But existing is basically all I do! I suppose I could part with 'one' and still be feared. I just told you! You've killed me!</p>
                                    <p><strong>Example: </strong>What's with you kids? Every other day it's food, food, food.</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-6-heading-3">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-6-content-3" aria-expanded="false" aria-controls="accordion-tab-6-content-3" style="text-decoration: none">Tell her you just want to talk?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-6-content-3" aria-labelledby="accordion-tab-6-heading-3" data-parent="#accordion-tab-6">
                                <div class="card-body">
                                    <p>It has nothing to do with mating. Soon enough. There, now he's trapped in a book I wrote: a crummy world of plot holes and spelling errors! Daylight and everything. Hey! I'm a porno-dealing monster, what do I care what you think?</p>
                                    <p><strong>Example: </strong>Is that a cooking show? It doesn't look so shiny to me. And why did 'I' have to take a cab?</p>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header" id="accordion-tab-6-heading-4">
                                <h5>
                                    <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#accordion-tab-6-content-4" aria-expanded="false" aria-controls="accordion-tab-6-content-4" style="text-decoration: none">Good man. Nixon's pro-war and pro-family?</button>
                                </h5>
                            </div>
                            <div class="collapse" id="accordion-tab-6-content-4" aria-labelledby="accordion-tab-6-heading-4" data-parent="#accordion-tab-6">
                                <div class="card-body">
                                    <p>I don't 'need' to drink. I can quit anytime I want! THE BIG BRAIN AM WINNING AGAIN! I AM THE GREETEST! NOW I AM LEAVING EARTH, FOR NO RAISEN! There's one way and only one way to determine if an animal is intelligent. Dissect its brain!</p>
                                    <p><strong>Example: </strong>Guess again. Yeah, I do that with my stupidness. And when we woke up, we had these bodies.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.3up.dk/jquery@3.3.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.3up.dk/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>

</body>
<style>
    .faq-nav {
        flex-direction: column;
        margin: 0 0 32px;
        border-radius: 2px;
        border: 1px solid #ddd;
        box-shadow: 0 1px 5px rgba(85, 85, 85, 0.15);
    }
    .faq-nav .nav-link {
        position: relative;
        display: block;
        margin: 0;
        padding: 13px 16px;
        background-color: #fff;
        border: 0;
        border-bottom: 1px solid #ddd;
        border-radius: 0;
        color: #616161;
        transition: background-color 0.2s ease;
    }
    .faq-nav .nav-link:hover {
        background-color: #f6f6f6;
    }
    .faq-nav .nav-link.active {
        background-color: #f6f6f6;
        font-weight: 700;
        color: rgba(0, 0, 0, .87);
    }
    .faq-nav .nav-link:last-of-type {
        border-bottom-left-radius: 2px;
        border-bottom-right-radius: 2px;
        border-bottom: 0;
    }
    .faq-nav .nav-link i.mdi {
        margin-right: 5px;
        font-size: 18px;
        position: relative;
    }
    .tab-content {
        box-shadow: 0 1px 5px rgba(85, 85, 85, 0.15);
    }
    .tab-content .card {
        border-radius: 0;
    }
    .tab-content .card-header {
        padding: 15px 16px;
        border-radius: 0;
        background-color: #f6f6f6;
    }
    .tab-content .card-header h5 {
        margin: 0;
    }
    .tab-content .card-header h5 button {
        display: block;
        width: 100%;
        padding: 0;
        border: 0;
        font-weight: 700;
        color: rgba(0, 0, 0, .87);
        text-align: left;
        white-space: normal;
    }
    .tab-content .card-header h5 button:hover, .tab-content .card-header h5 button:focus, .tab-content .card-header h5 button:active, .tab-content .card-header h5 button:hover:active {
        text-decoration: none;
    }
    .tab-content .card-body p {
        color: #616161;
    }
    .tab-content .card-body p:last-of-type {
        margin: 0;
    }
    .accordion > .card:not(:first-child) {
        border-top: 0;
    }
    .collapse.show .card-body {
        border-bottom: 1px solid rgba(0, 0, 0, .125);
    }
</style>