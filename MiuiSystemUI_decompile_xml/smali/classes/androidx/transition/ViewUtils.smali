.class public abstract Landroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CLIP_BOUNDS:Landroidx/transition/ViewUtils$1;

.field public static final IMPL:Landroidx/transition/ViewUtilsApi29;

.field public static final TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/transition/ViewUtilsApi29;

    .line 2
    invoke-direct {v0}, Landroidx/transition/ViewUtilsApi29;-><init>()V

    .line 4
    sput-object v0, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 7
    new-instance v0, Landroidx/transition/ViewUtils$1;

    .line 9
    const/4 v1, 0x0

    .line 11
    const-class v2, Ljava/lang/Float;

    .line 12
    const-string/jumbo v3, "translationAlpha"

    .line 14
    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 17
    sput-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    .line 20
    new-instance v0, Landroidx/transition/ViewUtils$1;

    .line 22
    const-class v1, Landroid/graphics/Rect;

    .line 24
    const-string v2, "clipBounds"

    .line 26
    const/4 v3, 0x1

    .line 28
    invoke-direct {v0, v2, v3, v1}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    .line 29
    sput-object v0, Landroidx/transition/ViewUtils;->CLIP_BOUNDS:Landroidx/transition/ViewUtils$1;

    .line 32
    return-void
    .line 34
.end method
