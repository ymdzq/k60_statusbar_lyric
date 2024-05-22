.class public final synthetic Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Landroid/view/SurfaceControl;

.field public final synthetic f$3:Landroid/graphics/RectF;

.field public final synthetic f$4:Landroid/graphics/Point;

.field public final synthetic f$5:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;

.field public final synthetic f$6:[Lmiuix/animation/IStateStyle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/RectF;Landroid/graphics/Point;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;[Lmiuix/animation/IStateStyle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$2:Landroid/view/SurfaceControl;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/RectF;

    .line 11
    iput-object p5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$4:Landroid/graphics/Point;

    .line 13
    iput-object p6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$5:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;

    .line 15
    iput-object p7, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$6:[Lmiuix/animation/IStateStyle;

    .line 17
    return-void
    .line 19
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$0:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$1:Landroid/view/SurfaceControl$Transaction;

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$2:Landroid/view/SurfaceControl;

    .line 6
    iget-object v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$3:Landroid/graphics/RectF;

    .line 8
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$4:Landroid/graphics/Point;

    .line 10
    iget-object v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$5:Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;

    .line 12
    iget-object v6, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$$ExternalSyntheticLambda4;->f$6:[Lmiuix/animation/IStateStyle;

    .line 14
    invoke-static/range {v0 .. v6}, Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;->$r8$lambda$48C95nlHtV5L5X3WSmT0QYl3Cqg(Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/RectF;Landroid/graphics/Point;Lcom/android/wm/shell/miuimultiwinswitch/miuidraganddrop/MiuiDropTransitionHandler$DropTransition;[Lmiuix/animation/IStateStyle;)V

    .line 16
    return-void
    .line 19
.end method
