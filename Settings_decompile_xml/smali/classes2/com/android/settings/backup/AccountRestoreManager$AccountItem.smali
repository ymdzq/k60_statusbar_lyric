.class Lcom/android/settings/backup/AccountRestoreManager$AccountItem;
.super Ljava/lang/Object;
.source "AccountRestoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/AccountRestoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountItem"
.end annotation


# instance fields
.field public id:J

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/backup/AccountRestoreManager$AccountItem-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/backup/AccountRestoreManager$AccountItem;-><init>()V

    return-void
.end method
