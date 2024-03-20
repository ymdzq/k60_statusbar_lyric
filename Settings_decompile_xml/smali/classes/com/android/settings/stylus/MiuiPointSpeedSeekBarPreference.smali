.class public Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;
.super Lcom/android/settings/widget/MiuiSeekBarPreference;
.source "MiuiPointSpeedSeekBarPreference.java"


# instance fields
.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MiuiSeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance p1, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference$1;-><init>(Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;)V

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MiuiSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance p1, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference$1;-><init>(Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;)V

    iput-object p1, p0, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/android/settings/widget/MiuiSeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 27
    sget v0, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    if-eqz p1, :cond_0

    .line 29
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiPointSpeedSeekBarPreference;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p0, 0x0

    .line 30
    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    :cond_0
    return-void
.end method
