.class public final Lcom/android/systemui/fragments/ExtensionFragmentListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

.field public final mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

.field public final mId:I

.field public mOldClass:Ljava/lang/String;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fragments/FragmentService;Landroid/view/View;Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "QS"

    .line 5
    iput-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mTag:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Lcom/android/systemui/fragments/FragmentService;->getFragmentHostManager(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 13
    iput-object p3, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 15
    const p2, 0x7f0a0761    # @id/qs_frame

    .line 17
    iput p2, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mId:I

    .line 20
    invoke-virtual {p1}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    .line 22
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 26
    move-result-object p0

    .line 29
    iget-object p1, p3, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    .line 30
    check-cast p1, Landroid/app/Fragment;

    .line 32
    invoke-virtual {p0, p2, p1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commit()I

    .line 38
    const/4 p0, 0x0

    .line 41
    iput-object p0, p3, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    .line 42
    return-void
    .line 44
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/FragmentBase;

    .line 2
    const-class v0, Landroid/app/Fragment;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mFragmentHostManager:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/fragments/FragmentHostManager;->mPlugins:Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;

    .line 15
    iget v2, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mId:I

    .line 17
    iget-object v3, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mTag:Ljava/lang/String;

    .line 19
    iget-object v4, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mOldClass:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    move-result-object v5

    .line 26
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 27
    move-result-object v5

    .line 30
    iget-object v6, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 31
    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mPluginContext:Landroid/content/Context;

    .line 33
    if-eqz v7, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    .line 38
    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mDefaultContext:Landroid/content/Context;

    .line 40
    :goto_0
    iget-object v6, v0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->mExtensionLookup:Landroid/util/ArrayMap;

    .line 42
    if-eqz v4, :cond_1

    .line 44
    invoke-virtual {v6, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_1
    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v4, v0, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->this$0:Lcom/android/systemui/fragments/FragmentHostManager;

    .line 52
    invoke-virtual {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->getFragmentManager()Landroid/app/FragmentManager;

    .line 54
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    .line 58
    move-result-object v6

    .line 61
    invoke-virtual {v0, v7, v5, v1}, Lcom/android/systemui/fragments/FragmentHostManager$ExtensionFragmentManager;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    .line 62
    move-result-object v0

    .line 65
    invoke-virtual {v6, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 70
    invoke-virtual {v4}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 83
    iput-object p1, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mOldClass:Ljava/lang/String;

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    move-result-object p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 94
    const-string v0, " must be a Fragment"

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 100
    const-string v0, "ExtensionFragmentListener"

    .line 101
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/fragments/ExtensionFragmentListener;->mExtension:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 106
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    .line 108
    if-eqz p1, :cond_3

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->this$0:Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    .line 112
    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    :cond_3
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    .line 119
    return-void
    .line 121
.end method
