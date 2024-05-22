.class public final Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController;


# instance fields
.field public final mDefaultContext:Landroid/content/Context;

.field public final mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

.field public final mPluginManager:Lcom/android/systemui/plugins/PluginManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/plugins/PluginManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mDefaultContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mLeakDetector:Lcom/android/systemui/util/leak/LeakDetector;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final newExtension()Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V

    .line 4
    return-object v0
    .line 7
.end method
