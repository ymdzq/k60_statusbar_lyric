.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

.field public final synthetic f$1:F

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;FII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 5
    iput p2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$1:F

    .line 7
    iput p3, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$2:I

    .line 9
    iput p4, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$3:I

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$1:F

    .line 4
    iget v2, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$2:I

    .line 6
    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer$$ExternalSyntheticLambda0;->f$3:I

    .line 8
    move-object v4, p1

    .line 10
    check-cast v4, Landroid/window/WindowContainerToken;

    .line 11
    move-object v5, p2

    .line 13
    check-cast v5, Landroid/view/SurfaceControl;

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;->$r8$lambda$wYaCtosOIZBYRPRy302ChFHzGyA(Lcom/android/wm/shell/onehanded/OneHandedDisplayAreaOrganizer;FIILandroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    .line 16
    return-void
    .line 19
.end method
