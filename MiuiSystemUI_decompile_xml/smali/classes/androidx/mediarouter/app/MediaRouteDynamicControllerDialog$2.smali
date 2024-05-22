.class public final Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;


# direct methods
.method public synthetic constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 8
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 10
    return-void

    .line 13
    :goto_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 14
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mSelectedRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 16
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 24
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const/4 p1, 0x2

    .line 31
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->unselect(I)V

    .line 32
    :cond_0
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$2;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    .line 35
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 37
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 42
.end method
