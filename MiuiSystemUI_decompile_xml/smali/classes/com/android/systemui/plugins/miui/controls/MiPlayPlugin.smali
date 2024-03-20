.class public interface abstract Lcom/android/systemui/plugins/miui/controls/MiPlayPlugin;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/Plugin;


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    action = "com.android.systemui.action.PLUGIN_MIPLAY"
    version = 0x1
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.android.systemui.action.PLUGIN_MIPLAY"

.field public static final CAST_INFO_KEY_DEVICE_DES:Ljava/lang/String; = "device_des"

.field public static final CAST_INFO_KEY_DEVICE_ICON:Ljava/lang/String; = "device_icon"

.field public static final REF_CONTROLCENTER:Ljava/lang/String; = "controlcenter"

.field public static final REF_KEYGUARD:Ljava/lang/String; = "keyguard"

.field public static final REF_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final VERSION:I = 0x1


# virtual methods
.method public abstract createMiPlayDetailView()Landroid/view/View;
.end method

.method public abstract getCastDescription()Ljava/lang/String;
.end method

.method public abstract getCastingDeviceIcon()Ljava/util/Map;
.end method

.method public abstract getMiPlayView(Lcom/android/systemui/plugins/miui/controls/MiPlayEntranceViewCallback;)Landroid/view/View;
.end method

.method public abstract hideMiPlayDetailView(Landroid/view/View;)V
.end method

.method public abstract hideMiPlayView()V
.end method

.method public abstract isAudioCasting()Z
.end method

.method public isInterconnectionCTAAgree(Landroid/content/Context;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract registerCastingCallback(Lcom/android/systemui/plugins/miui/controls/MiPlayCastingCallback;)V
.end method

.method public showCtaPage()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract showMiPlayDetailView(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract supportMiPlayAudio()Z
.end method

.method public abstract unregisterCastingCallback(Lcom/android/systemui/plugins/miui/controls/MiPlayCastingCallback;)V
.end method
