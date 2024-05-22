.class public final Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;

    .line 2
    invoke-direct {v0}, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;->INSTANCE:Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor$detectToggleJank$1;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    sget-object p0, Lcom/android/settingslib/core/instrumentation/SettingsJankMonitor;->jankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 2
    const/16 v0, 0x39

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 6
    return-void
    .line 9
.end method
