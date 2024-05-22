.class public final Lcom/android/systemui/screenshot/LongScreenshotActivity$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

.field public final synthetic val$bottomFraction:F

.field public final synthetic val$topFraction:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/screenshot/LongScreenshotActivity;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 2
    iput p2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$topFraction:F

    .line 4
    iput p3, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$bottomFraction:F

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 10
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/LongScreenshotActivity;->updateImageDimensions()V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->this$0:Lcom/android/systemui/screenshot/LongScreenshotActivity;

    .line 18
    iget-object v0, v0, Lcom/android/systemui/screenshot/LongScreenshotActivity;->mEnterTransitionView:Landroid/widget/ImageView;

    .line 20
    iget v1, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$topFraction:F

    .line 22
    iget v2, p0, Lcom/android/systemui/screenshot/LongScreenshotActivity$1;->val$bottomFraction:F

    .line 24
    new-instance v3, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;

    .line 26
    const/4 v4, 0x0

    .line 28
    invoke-direct {v3, p0, v1, v2, v4}, Lcom/android/systemui/screenshot/LongScreenshotActivity$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/LongScreenshotActivity$1;FFI)V

    .line 29
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 32
    const/4 p0, 0x1

    .line 35
    return p0
    .line 36
.end method
