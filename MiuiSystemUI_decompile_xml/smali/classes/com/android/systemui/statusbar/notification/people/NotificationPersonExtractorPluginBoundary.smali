.class public final Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ExtensionController;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;

    .line 10
    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl;)V

    .line 12
    const-class p1, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    .line 15
    invoke-static {p1}, Lcom/android/systemui/plugins/PluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mProducers:Ljava/util/ArrayList;

    .line 21
    new-instance v3, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;

    .line 23
    invoke-direct {v3, v0, v1, p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl$PluginItem;-><init>(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;Ljava/lang/String;Ljava/lang/Class;)V

    .line 25
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    new-instance p1, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;

    .line 31
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary$1;-><init>(Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;)V

    .line 33
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$$ExternalSyntheticLambda0;

    .line 41
    invoke-direct {p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    .line 46
    move-result-object p1

    .line 49
    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 50
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->-$$Nest$mnotifyChanged(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;)V

    .line 53
    iget-object p1, v0, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionImpl;->mItem:Ljava/lang/Object;

    .line 56
    check-cast p1, Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/people/NotificationPersonExtractorPluginBoundary;->plugin:Lcom/android/systemui/plugins/NotificationPersonExtractorPlugin;

    .line 60
    return-void
    .line 62
.end method
