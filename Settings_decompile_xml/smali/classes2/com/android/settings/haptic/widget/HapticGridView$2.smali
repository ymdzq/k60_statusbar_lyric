.class Lcom/android/settings/haptic/widget/HapticGridView$2;
.super Ljava/lang/Object;
.source "HapticGridView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/widget/HapticGridView;->initNormalView()V
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

    .line 202
    iput-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iput p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    iput-object p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$imgHolder:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private playVideoAnimator(Landroid/view/View;)V
    .locals 9

    .line 231
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmData(Lcom/android/settings/haptic/widget/HapticGridView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fputmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/animation/AnimatorSet;)V

    .line 233
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iget v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    invoke-static {v0, v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fputmPlayingIndex(Lcom/android/settings/haptic/widget/HapticGridView;I)V

    const/4 v0, 0x0

    .line 234
    :goto_0
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmData(Lcom/android/settings/haptic/widget/HapticGridView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 236
    iget v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    const/4 v2, -0x1

    if-eq v0, v1, :cond_3

    .line 238
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmLastPlayingIndex(Lcom/android/settings/haptic/widget/HapticGridView;)I

    move-result v1

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmLastPlayingIndex(Lcom/android/settings/haptic/widget/HapticGridView;)I

    move-result v1

    if-ne v1, v0, :cond_1

    goto :goto_1

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    .line 239
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v3}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object v1

    aget-object v4, v1, v0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    const-wide/16 v7, 0x12c

    invoke-static/range {v3 .. v8}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$mstartAlphaAnimation(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/view/View;FFJ)V

    goto :goto_2

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmLastPlayingIndex(Lcom/android/settings/haptic/widget/HapticGridView;)I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 247
    iget-object v3, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v3}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object v1

    aget-object v4, v1, v0

    const v5, 0x3ecccccd    # 0.4f

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x12c

    invoke-static/range {v3 .. v8}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$mstartAlphaAnimation(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/view/View;FFJ)V

    goto :goto_2

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object v1

    aget-object v1, v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/settings/haptic/widget/HapticGridView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/haptic/widget/HapticGridView$2$1;-><init>(Lcom/android/settings/haptic/widget/HapticGridView$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 268
    fill-array-data v1, :array_0

    const-string/jumbo v2, "scaleX"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v0, v0, [F

    .line 269
    fill-array-data v0, :array_1

    const-string/jumbo v2, "scaleY"

    invoke-static {p1, v2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 270
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 271
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 273
    iget-object p0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8b851f    # 1.09f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f8b851f    # 1.09f
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmAnimatorSet(Lcom/android/settings/haptic/widget/HapticGridView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmData(Lcom/android/settings/haptic/widget/HapticGridView;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 212
    :cond_1
    iget v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmPlayingIndex(Lcom/android/settings/haptic/widget/HapticGridView;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    aget-object v0, v0, v1

    .line 213
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iget v3, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    iget-object v4, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$imgHolder:Landroid/view/View;

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$mplayVideo(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/view/View;ILandroid/view/View;ZI)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 218
    :goto_0
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmData(Lcom/android/settings/haptic/widget/HapticGridView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 219
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object v1

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object v1

    aget-object v1, v1, v0

    .line 220
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1, v0}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fputmLastPlayingIndex(Lcom/android/settings/haptic/widget/HapticGridView;I)V

    .line 222
    iget-object v1, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {v1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmChildView(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$imgHolder:Landroid/view/View;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/settings/haptic/widget/HapticGridView$2;->val$index:I

    move v3, v0

    invoke-static/range {v1 .. v6}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$mplayVideo(Lcom/android/settings/haptic/widget/HapticGridView;Landroid/view/View;ILandroid/view/View;ZI)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 226
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/haptic/widget/HapticGridView$2;->playVideoAnimator(Landroid/view/View;)V

    :goto_1
    return-void
.end method
