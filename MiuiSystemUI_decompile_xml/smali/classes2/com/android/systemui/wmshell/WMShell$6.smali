.class public final Lcom/android/systemui/wmshell/WMShell$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic val$pip:Lcom/android/wm/shell/pip/Pip;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell$6;->val$pip:Lcom/android/wm/shell/pip/Pip;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final showPictureInPictureMenu()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell$6;->val$pip:Lcom/android/wm/shell/pip/Pip;

    .line 2
    invoke-interface {p0}, Lcom/android/wm/shell/pip/Pip;->showPictureInPictureMenu()V

    .line 4
    return-void
    .line 7
.end method
