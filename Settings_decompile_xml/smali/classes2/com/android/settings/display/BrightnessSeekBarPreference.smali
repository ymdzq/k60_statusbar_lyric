.class public Lcom/android/settings/display/BrightnessSeekBarPreference;
.super Lcom/android/settings/widget/SeekBarPreference;
.source "BrightnessSeekBarPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayId:I

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsTracking:Z

.field mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mMaximumBrightness:F

.field private mMinimumBrightness:F

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mSeekBarAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public static synthetic $r8$lambda$gKUNVqebQLoQnNXbAn6el4lKNp4(Lcom/android/settings/display/BrightnessSeekBarPreference;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessSeekBarPreference;->lambda$animateSeekBarTo$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rW5-kDhSlP08hxAM5Z7GkGSJCF0(Lcom/android/settings/display/BrightnessSeekBarPreference;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessSeekBarPreference;->lambda$animateSeekBarTo$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmSeekBarAnimator(Lcom/android/settings/display/BrightnessSeekBarPreference;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsTracking(Lcom/android/settings/display/BrightnessSeekBarPreference;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mIsTracking:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBrightness(Lcom/android/settings/display/BrightnessSeekBarPreference;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/BrightnessSeekBarPreference;->setBrightness(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/android/settings/display/BrightnessSeekBarPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessSeekBarPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/BrightnessSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/BrightnessSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p2, Lcom/android/settings/display/BrightnessSeekBarPreference$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/BrightnessSeekBarPreference$1;-><init>(Lcom/android/settings/display/BrightnessSeekBarPreference;)V

    iput-object p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 51
    sget p2, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    invoke-virtual {p0, p2}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 52
    sget p2, Lcom/android/settings/R$layout;->preference_brightness_seekbar:I

    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 53
    iput-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessSeekBarPreference;->initValue()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/BrightnessSeekBarPreference;IZ)V
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    return-void
.end method

.method private animateSeekBarTo(I)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 132
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(IZ)V

    .line 135
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_3

    .line 139
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    .line 140
    new-instance v0, Lcom/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_1

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result v0

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    .line 145
    new-instance v0, Lcom/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/BrightnessSeekBarPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/display/BrightnessSeekBarPreference;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 149
    :goto_1
    iget-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 150
    iget-object p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private initValue()V
    .locals 2

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMinimumBrightness:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMaximumBrightness:F

    .line 60
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 62
    iget-object v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayId:I

    return-void
.end method

.method private synthetic lambda$animateSeekBarTo$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method private synthetic lambda$animateSeekBarTo$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 146
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    return-void
.end method

.method private setBrightness(IZ)V
    .locals 2

    .line 162
    iget v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMinimumBrightness:F

    .line 163
    iget v1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMaximumBrightness:F

    .line 165
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result p1

    invoke-static {p1, v1}, Landroid/util/MathUtils;->min(FF)F

    move-result p1

    if-nez p2, :cond_0

    .line 170
    iget-object p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayId:I

    invoke-virtual {p2, p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    goto :goto_0

    .line 172
    :cond_0
    iget-object p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayId:I

    invoke-virtual {p2, v0}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    move-result p2

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    .line 174
    iget-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayId:I

    const/high16 p2, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    goto :goto_0

    .line 176
    :cond_1
    iget-object p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mDisplayId:I

    invoke-virtual {p2, p0, p1}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hasIcon()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/widget/SeekBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 76
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 77
    sget v0, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iput-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 78
    sget v0, Lcom/android/settingslib/display/BrightnessUtils;->GAMMA_SPACE_MAX:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object p0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public updateBrightnessSeekBar(FFF)V
    .locals 1

    .line 110
    iput p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMinimumBrightness:F

    .line 111
    iput p3, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMaximumBrightness:F

    .line 112
    iget-object p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p2

    iget p3, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMinimumBrightness:F

    iget v0, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMaximumBrightness:F

    invoke-static {p2, p3, v0}, Lcom/android/settingslib/display/BrightnessUtils;->convertGammaToLinearFloat(IFF)F

    move-result p2

    .line 115
    invoke-static {p1, p2}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_2

    :cond_1
    iget-boolean p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mIsTracking:Z

    if-eqz p2, :cond_3

    :cond_2
    return-void

    .line 123
    :cond_3
    iget p2, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMinimumBrightness:F

    iget p3, p0, Lcom/android/settings/display/BrightnessSeekBarPreference;->mMaximumBrightness:F

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGammaFloat(FFF)I

    move-result p1

    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessSeekBarPreference;->animateSeekBarTo(I)V

    return-void
.end method
