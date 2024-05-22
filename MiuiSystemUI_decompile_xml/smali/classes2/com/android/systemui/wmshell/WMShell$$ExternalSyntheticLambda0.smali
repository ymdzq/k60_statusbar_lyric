.class public final synthetic Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/model/SysUiState$SysUiStateCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/wmshell/WMShell;

.field public final synthetic f$1:Lcom/android/wm/shell/pip/Pip;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/pip/Pip;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onSystemUiStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/wmshell/WMShell;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const v0, 0x80ca4c

    .line 7
    and-int/2addr v0, p1

    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;->f$1:Lcom/android/wm/shell/pip/Pip;

    .line 16
    invoke-interface {p0, p1, v0}, Lcom/android/wm/shell/pip/Pip;->onSystemUiStateChanged(IZ)V

    .line 18
    return-void
    .line 21
.end method
