.class Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;
.super Ljava/lang/Object;
.source "MiuiGxzwAnimSettingsInternalActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 380
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 381
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmRecyclerView(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    .line 382
    iget-object v2, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v2}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmGxzwAnimItemList(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;

    .line 383
    iget-object v3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmRecyclerView(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    check-cast v3, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimViewHolder;

    .line 384
    iget-object v4, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v4}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmType(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)I

    move-result v4

    iget v5, v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->type:I

    if-eq v4, v5, :cond_0

    .line 385
    iget-object v4, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v4, v5}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fputmType(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;I)V

    .line 386
    iget-object v4, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    iget v5, v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->type:I

    invoke-static {v4, v5}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$msaveGxzwAnimType(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;I)V

    .line 387
    iget-object v4, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v4, v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$msetItemSelected(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;I)V

    if-eqz v3, :cond_0

    .line 389
    iget-object v4, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v4}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmGxzwAnimSelectAdapter(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimSelectAdapter;->onBindViewHolder(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$GxzwAnimViewHolder;I)V

    .line 392
    :cond_0
    iget-object v3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v3}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmIconGxzwVibrateEnable(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/settings/utils/FingerprintUtils;->IS_SUPPORT_NEW_HAPTIC_VERSION:Z

    if-eqz v3, :cond_2

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    iget v4, v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->rtpType:I

    invoke-virtual {v3, v4}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->extHapticFeedback(I)V

    :cond_2
    if-nez v0, :cond_3

    .line 396
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmVideoView(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lcom/android/settings/MutedVideoView;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    iget-object v2, v2, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$GxzwAnimItem;->video:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$msetVideoURI(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmVideoView(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lcom/android/settings/MutedVideoView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmVideoView(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lcom/android/settings/MutedVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/MutedVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_4

    .line 401
    iget-object p0, p0, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment$4;->this$0:Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;->-$$Nest$fgetmVideoView(Lcom/android/settings/MiuiGxzwAnimSettingsInternalActivity$MiuiGxzwAnimSettingsFragment;)Lcom/android/settings/MutedVideoView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/MutedVideoView;->start()V

    .line 405
    :cond_4
    :goto_0
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p1, p1, p1}, Lmiuix/animation/ITouchStyle;->setTint(FFFF)Lmiuix/animation/ITouchStyle;

    move-result-object p0

    invoke-interface {p0, p2}, Lmiuix/animation/ITouchStyle;->onMotionEvent(Landroid/view/MotionEvent;)V

    return v1
.end method
