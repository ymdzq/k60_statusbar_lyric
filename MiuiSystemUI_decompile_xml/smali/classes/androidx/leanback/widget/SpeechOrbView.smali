.class public Landroidx/leanback/widget/SpeechOrbView;
.super Landroidx/leanback/widget/SearchOrbView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCurrentLevel:I

.field public mListening:Z

.field public mListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field public mNotListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

.field public final mSoundLevelMaxZoom:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SpeechOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/leanback/widget/SearchOrbView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 5
    iput-boolean p2, p0, Landroidx/leanback/widget/SpeechOrbView;->mListening:Z

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f090017    # @fraction/lb_search_bar_speech_orb_max_level_zoom '144.0%'

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, p3, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p3

    iput p3, p0, Landroidx/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    .line 8
    new-instance p3, Landroidx/leanback/widget/SearchOrbView$Colors;

    const v0, 0x7f0601b0    # @color/lb_speech_orb_not_recording '#cccccc'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f0601b2    # @color/lb_speech_orb_not_recording_pulsed '#eeeeee'

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f0601b1    # @color/lb_speech_orb_not_recording_icon '#555555'

    .line 10
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p3, v0, v1, v2}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object p3, p0, Landroidx/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 11
    new-instance p3, Landroidx/leanback/widget/SearchOrbView$Colors;

    const v0, 0x7f0601b3    # @color/lb_speech_orb_recording '#ff4343'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-direct {p3, v1, p1, p2}, Landroidx/leanback/widget/SearchOrbView$Colors;-><init>(III)V

    iput-object p3, p0, Landroidx/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 13
    invoke-virtual {p0}, Landroidx/leanback/widget/SpeechOrbView;->showNotListening()V

    return-void
.end method


# virtual methods
.method public getLayoutResourceId()I
    .locals 0

    .line 1
    const p0, 0x7f0d015e    # @layout/lb_speech_orb 'res/layout/lb_speech_orb.xml'

    .line 2
    return p0
    .line 5
.end method

.method public setListeningOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 2
    return-void
    .line 4
.end method

.method public setNotListeningOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 2
    return-void
    .line 4
.end method

.method public setSoundLevel(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mListening:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 7
    if-le p1, v0, :cond_1

    .line 9
    sub-int/2addr p1, v0

    .line 11
    div-int/lit8 p1, p1, 0x2

    .line 12
    add-int/2addr p1, v0

    .line 14
    iput p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    int-to-float p1, v0

    .line 18
    const v0, 0x3f333333    # 0.7f

    .line 19
    mul-float/2addr p1, v0

    .line 22
    float-to-int p1, p1

    .line 23
    iput p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 24
    :goto_0
    iget p1, p0, Landroidx/leanback/widget/SpeechOrbView;->mSoundLevelMaxZoom:F

    .line 26
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchOrbView;->getFocusedZoom()F

    .line 28
    move-result v0

    .line 31
    sub-float/2addr p1, v0

    .line 32
    iget v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mCurrentLevel:I

    .line 33
    int-to-float v0, v0

    .line 35
    const/high16 v1, 0x42c80000    # 100.0f

    .line 36
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    invoke-static {p1, v0, v1, v2}, Landroidx/constraintlayout/core/motion/utils/StopLogicEngine$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 40
    move-result p1

    .line 43
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 44
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 46
    iget-object p0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 49
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 51
    return-void
    .line 54
.end method

.method public final showNotListening()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mNotListeningOrbColors:Landroidx/leanback/widget/SearchOrbView$Colors;

    .line 2
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 10
    const v1, 0x7f081269    # @drawable/lb_ic_search_mic_out 'res/drawable-hdpi/lb_ic_search_mic_out.png'

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->setOrbIcon(Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasFocus()Z

    .line 21
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchOrbView;->animateOnFocus(Z)V

    .line 25
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 28
    const/high16 v1, 0x3f800000    # 1.0f

    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 32
    iget-object v0, p0, Landroidx/leanback/widget/SearchOrbView;->mSearchOrbView:Landroid/view/View;

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 37
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroidx/leanback/widget/SpeechOrbView;->mListening:Z

    .line 41
    return-void
    .line 43
.end method
