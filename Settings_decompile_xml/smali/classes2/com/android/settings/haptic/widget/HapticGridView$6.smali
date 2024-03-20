.class Lcom/android/settings/haptic/widget/HapticGridView$6;
.super Ljava/lang/Object;
.source "HapticGridView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/widget/HapticGridView;->playVideo(Landroid/view/View;ILandroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/haptic/widget/HapticGridView;

.field final synthetic val$imgHolder:Landroid/view/View;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/widget/HapticGridView;ILandroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$6;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iput p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$6;->val$index:I

    iput-object p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$6;->val$imgHolder:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 423
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$6;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iget-object p2, p1, Lcom/android/settings/haptic/widget/HapticGridView;->mIsFinishRenderingStart:[Z

    iget p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$6;->val$index:I

    aget-boolean v0, p2, p3

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 424
    aput-boolean v1, p2, p3

    .line 425
    iget-object p0, p0, Lcom/android/settings/haptic/widget/HapticGridView$6;->val$imgHolder:Landroid/view/View;

    invoke-static {p1, p3, p0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$mhideImgHolder(Lcom/android/settings/haptic/widget/HapticGridView;ILandroid/view/View;)V

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
