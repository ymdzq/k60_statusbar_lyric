.class Lcom/android/settings/InfinityDisplaySettings$2;
.super Landroid/database/ContentObserver;
.source "InfinityDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/InfinityDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InfinityDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/InfinityDisplaySettings;Landroid/os/Handler;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/android/settings/InfinityDisplaySettings$2;->this$0:Lcom/android/settings/InfinityDisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/settings/InfinityDisplaySettings$2;->this$0:Lcom/android/settings/InfinityDisplaySettings;

    invoke-virtual {p0}, Lcom/android/settings/InfinityDisplaySettings;->updatePrefence()V

    return-void
.end method
