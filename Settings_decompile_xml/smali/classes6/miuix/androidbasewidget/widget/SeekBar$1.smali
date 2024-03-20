.class Lmiuix/androidbasewidget/widget/SeekBar$1;
.super Ljava/lang/Object;
.source "SeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/androidbasewidget/widget/SeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

.field final synthetic this$0:Lmiuix/androidbasewidget/widget/SeekBar;


# direct methods
.method constructor <init>(Lmiuix/androidbasewidget/widget/SeekBar;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;
    .locals 2

    .line 313
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lmiuix/util/HapticFeedbackCompat;

    iget-object v1, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiuix/util/HapticFeedbackCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    .line 316
    :cond_0
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->mHapticFeedbackCompat:Lmiuix/util/HapticFeedbackCompat;

    return-object p0
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6

    .line 321
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$000(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 322
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v3, v2

    .line 323
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lez v0, :cond_0

    .line 324
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v0

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 325
    :goto_0
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$200(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v2

    cmpl-float v2, v0, v2

    const-string v4, "progress"

    if-lez v2, :cond_1

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$300(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 326
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    goto :goto_1

    .line 328
    :cond_1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    int-to-float v2, p2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v0, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$402(Lmiuix/androidbasewidget/widget/SeekBar;I)I

    .line 329
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 331
    :goto_1
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 332
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$500(Lmiuix/androidbasewidget/widget/SeekBar;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$400(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    .line 333
    invoke-virtual {v3, v1, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-instance v5, Lmiuix/androidbasewidget/widget/SeekBar$1$1;

    invoke-direct {v5, p0}, Lmiuix/androidbasewidget/widget/SeekBar$1$1;-><init>(Lmiuix/androidbasewidget/widget/SeekBar$1;)V

    filled-new-array {v5}, [Lmiuix/animation/listener/TransitionListener;

    move-result-object v5

    .line 334
    invoke-virtual {v3, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    filled-new-array {v4, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 332
    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 346
    :cond_2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$600(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v2

    invoke-static {v0, v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I

    move-result v0

    .line 347
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$800(Lmiuix/androidbasewidget/widget/SeekBar;)F

    move-result v3

    invoke-static {v2, v3}, Lmiuix/androidbasewidget/widget/SeekBar;->access$700(Lmiuix/androidbasewidget/widget/SeekBar;F)I

    move-result v2

    if-ge p2, v0, :cond_3

    .line 350
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, v0

    goto :goto_2

    :cond_3
    if-le p2, v2, :cond_4

    .line 353
    iget-object p2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {p2, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, v2

    .line 356
    :cond_4
    :goto_2
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$100(Lmiuix/androidbasewidget/widget/SeekBar;)I

    move-result v2

    if-ne v0, v2, :cond_6

    :cond_5
    const/4 v1, 0x1

    :cond_6
    if-eqz p3, :cond_a

    const-string v0, "2.0"

    if-eqz v1, :cond_9

    .line 359
    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v2}, Lmiuix/androidbasewidget/widget/SeekBar;->access$900(Lmiuix/androidbasewidget/widget/SeekBar;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 360
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 361
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v2, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-ne v0, v2, :cond_7

    .line 362
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object v0

    const/16 v2, 0xcb

    invoke-virtual {v0, v2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_3

    .line 364
    :cond_7
    invoke-direct {p0}, Lmiuix/androidbasewidget/widget/SeekBar$1;->getHapticFeedbackCompat()Lmiuix/util/HapticFeedbackCompat;

    move-result-object v0

    const/16 v2, 0xca

    invoke-virtual {v0, v2}, Lmiuix/util/HapticFeedbackCompat;->performExtHapticFeedback(I)Z

    goto :goto_3

    .line 367
    :cond_8
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    goto :goto_3

    .line 370
    :cond_9
    invoke-static {v0}, Lmiuix/view/HapticCompat;->doesSupportHaptic(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 371
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_LIGHT:I

    invoke-static {p1, v0}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;I)Z

    .line 376
    :cond_a
    :goto_3
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0, v1}, Lmiuix/androidbasewidget/widget/SeekBar;->access$902(Lmiuix/androidbasewidget/widget/SeekBar;Z)Z

    .line 378
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 379
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    :cond_b
    return-void

    :array_0
    .array-data 4
        0x43af0000    # 350.0f
        0x3f666666    # 0.9f
        0x3e19999a    # 0.15f
    .end array-data
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {v0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object p0, p0, Lmiuix/androidbasewidget/widget/SeekBar$1;->this$0:Lmiuix/androidbasewidget/widget/SeekBar;

    invoke-static {p0}, Lmiuix/androidbasewidget/widget/SeekBar;->access$1000(Lmiuix/androidbasewidget/widget/SeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
