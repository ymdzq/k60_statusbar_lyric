.class public final Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipMenuView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 2
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/tv/TvPipMenuView$1;->this$0:Lcom/android/wm/shell/pip/tv/TvPipMenuView;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 4
    move-result p1

    .line 7
    sget v0, Lcom/android/wm/shell/pip/tv/TvPipMenuView;->$r8$clinit:I

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance p0, Landroid/graphics/Path;

    .line 13
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 15
    const/4 v0, 0x0

    .line 18
    int-to-float v1, p1

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    div-int/lit8 p1, p1, 0x2

    .line 23
    int-to-float p1, p1

    .line 25
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 29
    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 32
    return-void
    .line 35
.end method
