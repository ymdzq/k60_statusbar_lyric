.class Lcom/android/settings/development/GpoVersionPreferenceController$1;
.super Landroid/database/ContentObserver;
.source "GpoVersionPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/development/GpoVersionPreferenceController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/GpoVersionPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/development/GpoVersionPreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/development/GpoVersionPreferenceController$1;->this$0:Lcom/android/settings/development/GpoVersionPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settings/development/GpoVersionPreferenceController$1;->this$0:Lcom/android/settings/development/GpoVersionPreferenceController;

    invoke-static {p0}, Lcom/android/settings/development/GpoVersionPreferenceController;->-$$Nest$mupdateOptions(Lcom/android/settings/development/GpoVersionPreferenceController;)V

    return-void
.end method
