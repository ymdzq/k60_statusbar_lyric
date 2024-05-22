.class final Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $minLeft:I

.field final synthetic this$0:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;->$minLeft:I

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/Rect;

    .line 2
    iget p1, p1, Landroid/graphics/Rect;->left:I

    .line 4
    iget-object v0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;->this$0:Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;

    .line 6
    iget v0, v0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm;->pipAreaPadding:I

    .line 8
    sub-int/2addr p1, v0

    .line 10
    iget p0, p0, Lcom/android/wm/shell/pip/tv/TvPipKeepClearAlgorithm$findFreeMovePosition$2;->$minLeft:I

    .line 11
    if-le p1, p0, :cond_0

    .line 13
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method
