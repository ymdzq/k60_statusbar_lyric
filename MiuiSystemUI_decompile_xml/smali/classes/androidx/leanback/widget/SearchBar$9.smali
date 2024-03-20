.class public final Landroidx/leanback/widget/SearchBar$9;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/speech/RecognitionListener;


# instance fields
.field public final synthetic this$0:Landroidx/leanback/widget/SearchBar;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchBar;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBeginningOfSpeech()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onBufferReceived([B)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onEndOfSpeech()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onError(I)V
    .locals 2

    .line 1
    const-string v0, "SearchBar"

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 7
    const-string p1, "recognizer other error"

    .line 9
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    goto :goto_0

    .line 14
    :pswitch_0
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 15
    const-string p1, "recognizer insufficient permissions"

    .line 17
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    goto :goto_0

    .line 22
    :pswitch_1
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 23
    const-string p1, "recognizer busy"

    .line 25
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    goto :goto_0

    .line 30
    :pswitch_2
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 31
    const-string p1, "recognizer no match"

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    goto :goto_0

    .line 38
    :pswitch_3
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 39
    const-string p1, "recognizer speech timeout"

    .line 41
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    goto :goto_0

    .line 46
    :pswitch_4
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 47
    const-string p1, "recognizer client error"

    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    goto :goto_0

    .line 54
    :pswitch_5
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 55
    const-string p1, "recognizer server error"

    .line 57
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_0

    .line 62
    :pswitch_6
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 63
    const-string p1, "recognizer audio error"

    .line 65
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto :goto_0

    .line 70
    :pswitch_7
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 71
    const-string p1, "recognizer network error"

    .line 73
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    goto :goto_0

    .line 78
    :pswitch_8
    sget p1, Landroidx/leanback/widget/SearchBar;->$r8$clinit:I

    .line 79
    const-string p1, "recognizer network timeout"

    .line 81
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 86
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 88
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 91
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Landroidx/leanback/widget/SearchBar$10;

    .line 95
    const v1, 0x7f120028    # @raw/lb_voice_failure 'res/raw/lb_voice_failure.ogg'

    .line 97
    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/SearchBar$10;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void

    .line 106
    nop

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 108
.end method

.method public final onEvent(ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onPartialResults(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "results_recognition"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    goto/16 :goto_2

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 26
    move-result v1

    .line 29
    const/4 v2, 0x1

    .line 30
    if-le v1, v2, :cond_1

    .line 31
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    const/4 p1, 0x0

    .line 40
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 41
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    if-nez v0, :cond_2

    .line 48
    const-string v0, ""

    .line 50
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    .line 52
    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 54
    if-eqz p1, :cond_3

    .line 57
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 59
    move-result v2

    .line 62
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 63
    sget-object v3, Landroidx/leanback/widget/StreamingTextView;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    .line 66
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 68
    move-result-object v3

    .line 71
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    .line 72
    move-result v4

    .line 75
    if-eqz v4, :cond_3

    .line 76
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    .line 78
    move-result v4

    .line 81
    add-int/2addr v4, v2

    .line 82
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    .line 83
    move-result v5

    .line 86
    add-int/2addr v5, v2

    .line 87
    new-instance v6, Landroidx/leanback/widget/StreamingTextView$DottySpan;

    .line 88
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    .line 90
    move-result v7

    .line 93
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 94
    move-result v7

    .line 97
    invoke-direct {v6, p0, v7, v4}, Landroidx/leanback/widget/StreamingTextView$DottySpan;-><init>(Landroidx/leanback/widget/SearchEditText;II)V

    .line 98
    const/16 v7, 0x21

    .line 101
    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 103
    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 107
    move-result p1

    .line 110
    iget v0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    .line 111
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 113
    move-result p1

    .line 116
    iput p1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    .line 117
    new-instance p1, Landroid/text/SpannedString;

    .line 119
    invoke-direct {p1, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    .line 127
    move-result p1

    .line 130
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->bringPointIntoView(I)Z

    .line 131
    iget-object p1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 134
    if-eqz p1, :cond_4

    .line 136
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 138
    :cond_4
    invoke-virtual {p0}, Landroidx/leanback/widget/StreamingTextView;->getStreamPosition()I

    .line 141
    move-result p1

    .line 144
    invoke-virtual {p0}, Landroid/widget/EditText;->length()I

    .line 145
    move-result v0

    .line 148
    sub-int v1, v0, p1

    .line 149
    if-lez v1, :cond_6

    .line 151
    iget-object v2, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 153
    if-nez v2, :cond_5

    .line 155
    new-instance v2, Landroid/animation/ObjectAnimator;

    .line 157
    invoke-direct {v2}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 159
    iput-object v2, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 162
    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 164
    iget-object v2, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 167
    sget-object v3, Landroidx/leanback/widget/StreamingTextView;->STREAM_POSITION_PROPERTY:Landroidx/leanback/widget/StreamingTextView$1;

    .line 169
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 171
    :cond_5
    iget-object v2, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 174
    filled-new-array {p1, v0}, [I

    .line 176
    move-result-object p1

    .line 179
    invoke-virtual {v2, p1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 180
    iget-object p1, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 183
    const-wide/16 v2, 0x32

    .line 185
    int-to-long v0, v1

    .line 187
    mul-long/2addr v0, v2

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 189
    iget-object p0, p0, Landroidx/leanback/widget/StreamingTextView;->mStreamingAnimation:Landroid/animation/ObjectAnimator;

    .line 192
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 194
    :cond_6
    :goto_2
    return-void
    .line 197
.end method

.method public final onReadyForSpeech(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 2
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 4
    iget-object v0, p1, Landroidx/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 6
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 8
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 14
    const v1, 0x7f081268    # @drawable/lb_ic_search_mic 'res/drawable-hdpi/lb_ic_search_mic.png'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 22
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p1, v0}, Landroidx/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    .line 26
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, p1, Landroidx/leanback/widget/SearchOrbView;->mColorAnimationEnabled:Z

    .line 30
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchOrbView;->updateColorAnimator()V

    .line 32
    iget-object v2, p1, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 35
    const/high16 v3, 0x3f800000    # 1.0f

    .line 37
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleX(F)V

    .line 39
    iget-object v2, p1, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 42
    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    .line 44
    iput v1, p1, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 47
    iput-boolean v0, p1, Landroidx/leanback/widget/SpeechOrbView;->mListening:Z

    .line 49
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 51
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Landroidx/leanback/widget/SearchBar$10;

    .line 55
    const v1, 0x7f12002a    # @raw/lb_voice_open 'res/raw/lb_voice_open.ogg'

    .line 57
    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/SearchBar$10;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
    .line 66
.end method

.method public final onResults(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "results_recognition"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    iput-object p1, v0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 20
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 22
    iget-object v0, p1, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 24
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 31
    iget-object p1, p1, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 38
    invoke-virtual {p1}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 40
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 43
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Landroidx/leanback/widget/SearchBar$10;

    .line 47
    const v1, 0x7f12002b    # @raw/lb_voice_success 'res/raw/lb_voice_success.ogg'

    .line 49
    invoke-direct {v0, p0, v1}, Landroidx/leanback/widget/SearchBar$10;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 52
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
    .line 58
.end method

.method public final onRmsChanged(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-gez v0, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 9
    mul-float/2addr p1, v0

    .line 11
    float-to-int p1, p1

    .line 12
    :goto_0
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar$9;->this$0:Landroidx/leanback/widget/SearchBar;

    .line 13
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 15
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setSoundLevel(I)V

    .line 17
    return-void
    .line 20
.end method
