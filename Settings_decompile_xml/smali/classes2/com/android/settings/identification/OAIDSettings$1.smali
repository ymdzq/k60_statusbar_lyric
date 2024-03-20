.class Lcom/android/settings/identification/OAIDSettings$1;
.super Landroid/database/ContentObserver;
.source "OAIDSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/identification/OAIDSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/identification/OAIDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/identification/OAIDSettings;Landroid/os/Handler;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/android/settings/identification/OAIDSettings$1;->this$0:Lcom/android/settings/identification/OAIDSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/identification/OAIDSettings$1;->this$0:Lcom/android/settings/identification/OAIDSettings;

    invoke-static {p0}, Lcom/android/settings/identification/OAIDSettings;->-$$Nest$msetOAIDStringPrefContent(Lcom/android/settings/identification/OAIDSettings;)V

    return-void
.end method
