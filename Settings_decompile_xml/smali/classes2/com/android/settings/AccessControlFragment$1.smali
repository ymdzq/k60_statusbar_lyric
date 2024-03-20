.class Lcom/android/settings/AccessControlFragment$1;
.super Landroid/database/ContentObserver;
.source "AccessControlFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessControlFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessControlFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControlFragment;Landroid/os/Handler;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/android/settings/AccessControlFragment$1;->this$0:Lcom/android/settings/AccessControlFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settings/AccessControlFragment$1;->this$0:Lcom/android/settings/AccessControlFragment;

    invoke-static {p0}, Lcom/android/settings/AccessControlFragment;->-$$Nest$mupdatePrivacyMode(Lcom/android/settings/AccessControlFragment;)V

    return-void
.end method
