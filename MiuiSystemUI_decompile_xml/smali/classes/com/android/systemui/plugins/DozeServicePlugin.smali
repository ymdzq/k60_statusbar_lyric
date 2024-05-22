.class public interface abstract Lcom/android/systemui/plugins/DozeServicePlugin;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_DOZE"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_DOZE"

.field public static final KEY_SYSTEMUI_ACTION_NOTIFICATION_PROVIDER:Ljava/lang/String; = "key_systemui_action_notification_provider"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract onDreamingStarted(Landroid/view/ViewGroup;)V
.end method

.method public abstract onDreamingStopped()V
.end method

.method public abstract onSystemUIAction(ILandroid/os/Bundle;)Ljava/util/Map;
.end method

.method public abstract setDozeRequester(Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;)V
.end method
