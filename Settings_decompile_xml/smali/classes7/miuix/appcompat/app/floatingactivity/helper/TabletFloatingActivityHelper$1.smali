.class Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TabletFloatingActivityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->init(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;


# direct methods
.method constructor <init>(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 218
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$000(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$100(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 220
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$200(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 221
    iget-object p1, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    invoke-static {p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$300(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;)V

    .line 222
    iget-object p0, p0, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper$1;->this$0:Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;

    const/4 p1, 0x2

    invoke-static {p0, v0, p1}, Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;->access$400(Lmiuix/appcompat/app/floatingactivity/helper/TabletFloatingActivityHelper;ZI)V

    :cond_0
    return v0
.end method
