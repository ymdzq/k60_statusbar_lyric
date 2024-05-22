.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts$configurationListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$configurationListener$1;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$configurationListener$1;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    invoke-static {p0}, Lcom/miui/systemui/MiuiKeyboardShortcuts;->access$dismissDialog(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 4
    return-void
    .line 7
.end method
