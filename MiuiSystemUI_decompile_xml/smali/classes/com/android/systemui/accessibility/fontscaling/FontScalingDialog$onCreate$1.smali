.class public final Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public isTrackingTouch:Z

.field public final synthetic this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance p3, Landroid/content/res/Configuration;

    .line 7
    iget-object v0, p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->configuration:Landroid/content/res/Configuration;

    .line 9
    invoke-direct {p3, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 11
    iget-object v0, p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->strEntryValues:[Ljava/lang/String;

    .line 14
    aget-object v0, v0, p2

    .line 16
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 18
    move-result v0

    .line 21
    iput v0, p3, Landroid/content/res/Configuration;->fontScale:F

    .line 22
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0, p3}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    .line 28
    move-result-object p3

    .line 31
    invoke-virtual {p3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 40
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 44
    iget-object p1, p1, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->title:Landroid/widget/TextView;

    .line 47
    if-nez p1, :cond_0

    .line 49
    const/4 p1, 0x0

    .line 51
    :cond_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p3

    .line 55
    const v0, 0x7f0702c6    # @dimen/dialog_title_text_size '24.0sp'

    .line 56
    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 59
    move-result p3

    .line 62
    const/4 v0, 0x0

    .line 63
    invoke-virtual {p1, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 64
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;->isTrackingTouch:Z

    .line 67
    if-nez p1, :cond_1

    .line 69
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 71
    iget-wide v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->CHANGE_BY_BUTTON_DELAY_MS:J

    .line 73
    invoke-static {p0, p2, v0, v1}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->access$changeFontSize(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;IJ)V

    .line 75
    :cond_1
    return-void
    .line 78
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;->isTrackingTouch:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;->isTrackingTouch:Z

    .line 3
    iget-object v0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 5
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    .line 7
    move-result p1

    .line 10
    iget-object p0, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog$onCreate$1;->this$0:Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;

    .line 11
    iget-wide v1, p0, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->CHANGE_BY_SEEKBAR_DELAY_MS:J

    .line 13
    invoke-static {v0, p1, v1, v2}, Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;->access$changeFontSize(Lcom/android/systemui/accessibility/fontscaling/FontScalingDialog;IJ)V

    .line 15
    return-void
    .line 18
.end method
