.class public final Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;
.super Landroid/content/BroadcastReceiver;
.source "ScreenMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor$ScreenStateChangeListener;
    }
.end annotation


# static fields
.field public static final STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final screenStateMonitor:Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor$ScreenStateChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;->STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor$ScreenStateChangeListener;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;->screenStateMonitor:Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor$ScreenStateChangeListener;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 32
    :cond_1
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor;->screenStateMonitor:Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor$ScreenStateChangeListener;

    invoke-interface {p0}, Lcom/android/settings/accessibility/accessibilitymenu/ScreenMonitor$ScreenStateChangeListener;->screenTurnedOff()V

    :goto_0
    return-void
.end method
