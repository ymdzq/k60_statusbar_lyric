.class public interface abstract Lcom/android/systemui/plugins/GlobalActions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/DependsOn;
    target = Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;
.end annotation

.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_GLOBAL_ACTIONS"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_GLOBAL_ACTIONS"

.field public static final VERSION:I = 0x1


# virtual methods
.method public destroy()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract showGlobalActions(Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;)V
.end method

.method public showShutdownUi(ZLjava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
