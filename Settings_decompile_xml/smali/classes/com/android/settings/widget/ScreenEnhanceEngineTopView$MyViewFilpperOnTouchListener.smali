.class Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;
.super Ljava/lang/Object;
.source "ScreenEnhanceEngineTopView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ScreenEnhanceEngineTopView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyViewFilpperOnTouchListener"
.end annotation


# instance fields
.field private currentViewPosition:I

.field private leftInAnimation:Landroid/view/animation/Animation;

.field private leftOutAnimation:Landroid/view/animation/Animation;

.field private rightInAnimation:Landroid/view/animation/Animation;

.field private rightOutAnimation:Landroid/view/animation/Animation;

.field private startX:F

.field final synthetic this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 244
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftInAnimation:Landroid/view/animation/Animation;

    .line 245
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftOutAnimation:Landroid/view/animation/Animation;

    .line 246
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightInAnimation:Landroid/view/animation/Animation;

    .line 247
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightOutAnimation:Landroid/view/animation/Animation;

    const/4 p1, 0x0

    .line 248
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->startX:F

    const/4 p1, 0x0

    .line 249
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;-><init>(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 254
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gt p1, v1, :cond_0

    return v0

    .line 257
    :cond_0
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftInAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftOutAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightInAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightOutAnimation:Landroid/view/animation/Animation;

    if-nez p1, :cond_2

    .line 259
    :cond_1
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getWidth()I

    move-result p1

    .line 260
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    neg-int v3, p1

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftInAnimation:Landroid/view/animation/Animation;

    .line 262
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    invoke-direct {v2, v4, p1, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftOutAnimation:Landroid/view/animation/Animation;

    .line 265
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v2, p1, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightInAnimation:Landroid/view/animation/Animation;

    .line 267
    new-instance p1, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p1, v4, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightOutAnimation:Landroid/view/animation/Animation;

    .line 270
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 271
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 272
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 273
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 276
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_3

    .line 277
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->startX:F

    goto/16 :goto_1

    .line 279
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    if-eq p1, v1, :cond_4

    .line 280
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v2, 0x3

    if-ne p1, v2, :cond_9

    .line 282
    :cond_4
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmShowPagePositionLayout(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget v2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    .line 283
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 284
    iget-object v2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {v2}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetotherPositionColor(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 286
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->startX:F

    sub-float/2addr p1, v2

    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    .line 287
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 288
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->leftOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    .line 290
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showPrevious()V

    .line 293
    :cond_5
    iget p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->startX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    .line 294
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 295
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->rightOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p1, p2}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 296
    iget p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    .line 297
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->showNext()V

    .line 299
    :cond_6
    iget p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    if-gez p1, :cond_7

    .line 300
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    goto :goto_0

    .line 301
    :cond_7
    iget-object p2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p2}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result p2

    if-lt p1, p2, :cond_8

    .line 302
    iput v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    .line 303
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetmShowPagePositionLayout(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->currentViewPosition:I

    .line 304
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    .line 305
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;->this$0:Lcom/android/settings/widget/ScreenEnhanceEngineTopView;

    invoke-static {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->-$$Nest$fgetcurrentPositionColor(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_9
    :goto_1
    return v1
.end method
