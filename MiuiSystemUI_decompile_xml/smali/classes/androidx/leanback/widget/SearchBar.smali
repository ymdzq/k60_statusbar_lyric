.class public Landroidx/leanback/widget/SearchBar;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAutoStartRecognition:Z

.field public final mBackgroundAlpha:I

.field public final mBackgroundSpeechAlpha:I

.field public mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field public mBadgeView:Landroid/widget/ImageView;

.field public mBarBackground:Landroid/graphics/drawable/Drawable;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public mHint:Ljava/lang/String;

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mListening:Z

.field public mRecognizing:Z

.field public mSearchQuery:Ljava/lang/String;

.field public mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

.field public final mSoundMap:Landroid/util/SparseIntArray;

.field public mSoundPool:Landroid/media/SoundPool;

.field public mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

.field public mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field public final mTextColor:I

.field public final mTextColorSpeechMode:I

.field public final mTextHintColor:I

.field public final mTextHintColorSpeechMode:I

.field public mTitle:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Landroidx/leanback/widget/SearchBar;

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/leanback/widget/SearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SearchBar;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Landroidx/leanback/widget/SearchBar;->mAutoStartRecognition:Z

    .line 6
    new-instance p3, Landroid/util/SparseIntArray;

    invoke-direct {p3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p3, p0, Landroidx/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    .line 7
    iput-boolean p2, p0, Landroidx/leanback/widget/SearchBar;->mRecognizing:Z

    .line 8
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0159    # @layout/lb_search_bar 'res/layout/lb_search_bar.xml'

    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0705a6    # @dimen/lb_search_bar_height '60.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 14
    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 17
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    const-string p2, ""

    .line 18
    iput-object p2, p0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    const-string p2, "input_method"

    .line 19
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const p1, 0x7f0601ae    # @color/lb_search_bar_text_speech_mode '#ff444444'

    .line 20
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    const p1, 0x7f0601ad    # @color/lb_search_bar_text '#80eeeeee'

    .line 21
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->mTextColor:I

    const p1, 0x7f0b0092    # @integer/lb_search_bar_speech_mode_background_alpha '179'

    .line 22
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    const p1, 0x7f0b0093    # @integer/lb_search_bar_text_mode_background_alpha '51'

    .line 23
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->mBackgroundAlpha:I

    const p1, 0x7f0601ac    # @color/lb_search_bar_hint_speech_mode '#66222222'

    .line 24
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    const p1, 0x7f0601ab    # @color/lb_search_bar_hint '#ff888888'

    .line 25
    invoke-virtual {p3, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SearchBar;->mTextHintColor:I

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    new-instance v0, Landroid/media/SoundPool;

    .line 5
    const/4 v1, 0x2

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 10
    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    .line 13
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mContext:Landroid/content/Context;

    .line 15
    const v1, 0x7f120028    # @raw/lb_voice_failure 'res/raw/lb_voice_failure.ogg'

    .line 17
    const v4, 0x7f12002a    # @raw/lb_voice_open 'res/raw/lb_voice_open.ogg'

    .line 20
    const v5, 0x7f120029    # @raw/lb_voice_no_input 'res/raw/lb_voice_no_input.ogg'

    .line 23
    const v6, 0x7f12002b    # @raw/lb_voice_success 'res/raw/lb_voice_success.ogg'

    .line 26
    filled-new-array {v1, v4, v5, v6}, [I

    .line 29
    move-result-object v1

    .line 32
    :goto_0
    const/4 v4, 0x4

    .line 33
    if-ge v3, v4, :cond_0

    .line 34
    aget v4, v1, v3

    .line 36
    iget-object v5, p0, Landroidx/leanback/widget/SearchBar;->mSoundMap:Landroid/util/SparseIntArray;

    .line 38
    iget-object v6, p0, Landroidx/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    .line 40
    invoke-virtual {v6, v0, v4, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 42
    move-result v6

    .line 45
    invoke-virtual {v5, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 46
    add-int/lit8 v3, v3, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_0
    return-void
    .line 52
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSoundPool:Landroid/media/SoundPool;

    .line 5
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 7
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 10
    return-void
    .line 13
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a04d0    # @id/lb_search_bar_items

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 12
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    const v0, 0x7f0a04d3    # @id/lb_search_text_editor

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/leanback/widget/SearchEditText;

    .line 27
    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 29
    const v0, 0x7f0a04cf    # @id/lb_search_bar_badge

    .line 31
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroid/widget/ImageView;

    .line 38
    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    .line 40
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 49
    new-instance v1, Landroidx/leanback/widget/SearchBar$1;

    .line 51
    const/4 v2, 0x0

    .line 53
    invoke-direct {v1, p0, v2}, Landroidx/leanback/widget/SearchBar$1;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 57
    new-instance v0, Landroidx/leanback/widget/SearchBar$2;

    .line 60
    invoke-direct {v0, p0, v2}, Landroidx/leanback/widget/SearchBar$2;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 62
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 65
    new-instance v2, Landroidx/leanback/widget/SearchBar$3;

    .line 67
    invoke-direct {v2, p0, v0}, Landroidx/leanback/widget/SearchBar$3;-><init>(Landroidx/leanback/widget/SearchBar;Landroidx/leanback/widget/SearchBar$2;)V

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 72
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 75
    new-instance v1, Landroidx/leanback/widget/SearchBar$4;

    .line 77
    invoke-direct {v1, p0}, Landroidx/leanback/widget/SearchBar$4;-><init>(Landroidx/leanback/widget/SearchBar;)V

    .line 79
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchEditText;->setOnKeyboardDismissListener(Landroidx/leanback/widget/SearchEditText$OnKeyboardDismissListener;)V

    .line 82
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 85
    new-instance v1, Landroidx/leanback/widget/SearchBar$5;

    .line 87
    invoke-direct {v1, p0}, Landroidx/leanback/widget/SearchBar$5;-><init>(Landroidx/leanback/widget/SearchBar;)V

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 92
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 95
    const-string v1, "escapeNorth,voiceDismiss"

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 99
    const v0, 0x7f0a04d1    # @id/lb_search_bar_speech_orb

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v0

    .line 108
    check-cast v0, Landroidx/leanback/widget/SpeechOrbView;

    .line 109
    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 111
    new-instance v1, Landroidx/leanback/widget/SearchBar$6;

    .line 113
    invoke-direct {v1, p0}, Landroidx/leanback/widget/SearchBar$6;-><init>(Landroidx/leanback/widget/SearchBar;)V

    .line 115
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/SearchOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 121
    new-instance v1, Landroidx/leanback/widget/SearchBar$1;

    .line 123
    const/4 v2, 0x1

    .line 125
    invoke-direct {v1, p0, v2}, Landroidx/leanback/widget/SearchBar$1;-><init>(Landroidx/leanback/widget/SearchBar;I)V

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 129
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->hasFocus()Z

    .line 132
    move-result v0

    .line 135
    invoke-virtual {p0, v0}, Landroidx/leanback/widget/SearchBar;->updateUi(Z)V

    .line 136
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->updateHint()V

    .line 139
    return-void
    .line 142
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8
    if-eqz p1, :cond_0

    .line 11
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mBadgeView:Landroid/widget/ImageView;

    .line 20
    const/16 p1, 0x8

    .line 22
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 24
    :cond_1
    :goto_0
    return-void
    .line 27
.end method

.method public setNextFocusDownId(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setNextFocusDownId(I)V

    .line 4
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setNextFocusDownId(I)V

    .line 9
    return-void
    .line 12
.end method

.method public setPermissionListener(Landroidx/leanback/widget/SearchBar$SearchBarPermissionListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSearchAffordanceColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setNotListeningOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setSearchAffordanceColorsInListening(Landroidx/leanback/widget/SearchOrbView$Colors;)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroidx/leanback/widget/SpeechOrbView;->setListeningOrbColors(Landroidx/leanback/widget/SearchOrbView$Colors;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setSearchBarListener(Landroidx/leanback/widget/SearchBar$SearchBarListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 10
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 19
    :goto_0
    return-void
    .line 21
.end method

.method public setSpeechRecognitionCallback(Landroidx/leanback/widget/SpeechRecognitionCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    return-void
    .line 2
.end method

.method public setSpeechRecognizer(Landroid/speech/SpeechRecognizer;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->stopRecognition()V

    .line 2
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 10
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mListening:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 17
    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 19
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mListening:Z

    .line 23
    :cond_0
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 25
    return-void
    .line 27
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->updateHint()V

    .line 4
    return-void
    .line 7
.end method

.method public final startRecognition()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mRecognizing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->hasFocus()Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestFocus()Z

    .line 13
    :cond_1
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 16
    if-nez v0, :cond_2

    .line 18
    return-void

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 21
    move-result-object v0

    .line 24
    const-string v1, "android.permission.RECORD_AUDIO"

    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mRecognizing:Z

    .line 34
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 36
    const-string v2, ""

    .line 38
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 40
    new-instance v1, Landroid/content/Intent;

    .line 43
    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    .line 45
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 47
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    .line 50
    const-string v3, "free_form"

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v2, "android.speech.extra.PARTIAL_RESULTS"

    .line 57
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 62
    new-instance v3, Landroidx/leanback/widget/SearchBar$9;

    .line 64
    invoke-direct {v3, p0}, Landroidx/leanback/widget/SearchBar$9;-><init>(Landroidx/leanback/widget/SearchBar;)V

    .line 66
    invoke-virtual {v2, v3}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 69
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mListening:Z

    .line 72
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 74
    invoke-virtual {p0, v1}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    .line 76
    return-void

    .line 79
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 80
    const-string v0, "android.permission.RECORD_AUDIO required for search"

    .line 82
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 84
    throw p0
    .line 87
.end method

.method public final stopRecognition()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mRecognizing:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 7
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mSearchQuery:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 14
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 18
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mRecognizing:Z

    .line 22
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 24
    if-nez v1, :cond_1

    .line 26
    return-void

    .line 28
    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 29
    invoke-virtual {v1}, Landroidx/leanback/widget/SpeechOrbView;->showNotListening()V

    .line 31
    iget-boolean v1, p0, Landroidx/leanback/widget/SearchBar;->mListening:Z

    .line 34
    if-eqz v1, :cond_2

    .line 36
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 38
    invoke-virtual {v1}, Landroid/speech/SpeechRecognizer;->cancel()V

    .line 40
    iput-boolean v0, p0, Landroidx/leanback/widget/SearchBar;->mListening:Z

    .line 43
    :cond_2
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 45
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 48
    return-void
    .line 51
.end method

.method public final updateHint()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f130677    # @string/lb_search_bar_hint 'Search'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    iget-object v0, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 21
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isFocused()Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 29
    move-result-object v0

    .line 32
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    .line 33
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 38
    const v2, 0x7f13067a    # @string/lb_search_bar_hint_with_title_speech 'Speak to search %1$s'

    .line 39
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 50
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mTitle:Ljava/lang/String;

    .line 51
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 53
    move-result-object v1

    .line 56
    const v2, 0x7f130679    # @string/lb_search_bar_hint_with_title 'Search %1$s'

    .line 57
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object v1, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 65
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->isFocused()Z

    .line 67
    move-result v1

    .line 70
    if-eqz v1, :cond_2

    .line 71
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v0

    .line 76
    const v1, 0x7f130678    # @string/lb_search_bar_hint_speech 'Speak to search'

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 83
    :cond_2
    :goto_0
    iput-object v0, p0, Landroidx/leanback/widget/SearchBar;->mHint:Ljava/lang/String;

    .line 84
    iget-object p0, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 86
    if-eqz p0, :cond_3

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 90
    :cond_3
    return-void
    .line 93
.end method

.method public final updateUi(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    .line 4
    iget v0, p0, Landroidx/leanback/widget/SearchBar;->mBackgroundSpeechAlpha:I

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 8
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSpeechOrbView:Landroidx/leanback/widget/SpeechOrbView;

    .line 11
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isFocused()Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 19
    iget v0, p0, Landroidx/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    .line 21
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 23
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 26
    iget v0, p0, Landroidx/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 34
    iget v0, p0, Landroidx/leanback/widget/SearchBar;->mTextColorSpeechMode:I

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 38
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 41
    iget v0, p0, Landroidx/leanback/widget/SearchBar;->mTextHintColorSpeechMode:I

    .line 43
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mBarBackground:Landroid/graphics/drawable/Drawable;

    .line 49
    iget v0, p0, Landroidx/leanback/widget/SearchBar;->mBackgroundAlpha:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 53
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 56
    iget v0, p0, Landroidx/leanback/widget/SearchBar;->mTextColor:I

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 60
    iget-object p1, p0, Landroidx/leanback/widget/SearchBar;->mSearchTextEditor:Landroidx/leanback/widget/SearchEditText;

    .line 63
    iget v0, p0, Landroidx/leanback/widget/SearchBar;->mTextHintColor:I

    .line 65
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 67
    :goto_0
    invoke-virtual {p0}, Landroidx/leanback/widget/SearchBar;->updateHint()V

    .line 70
    return-void
    .line 73
.end method
