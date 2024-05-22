.class public final Lmiuix/internal/view/CheckWidgetDrawableAnims$7;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;


# direct methods
.method public constructor <init>(Lmiuix/internal/view/CheckWidgetDrawableAnims;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 2
    iget-object v0, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 4
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 12
    iget-object v0, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentUnPressAlphaAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 14
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 16
    :cond_0
    iget-object v0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 19
    iget-object v0, v0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 21
    invoke-virtual {v0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims$7;->this$0:Lmiuix/internal/view/CheckWidgetDrawableAnims;

    .line 29
    iget-object p0, p0, Lmiuix/internal/view/CheckWidgetDrawableAnims;->mParentCheckedUnPressScaleAnim:Lmiuix/animation/physics/SpringAnimation;

    .line 31
    invoke-virtual {p0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 33
    :cond_1
    return-void
    .line 36
.end method
