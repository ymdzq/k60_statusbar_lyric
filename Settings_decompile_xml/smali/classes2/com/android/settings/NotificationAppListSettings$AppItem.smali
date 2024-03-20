.class Lcom/android/settings/NotificationAppListSettings$AppItem;
.super Ljava/lang/Object;
.source "NotificationAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppItem"
.end annotation


# instance fields
.field public mLabel:Ljava/lang/String;

.field public mPkgName:Ljava/lang/String;

.field public mType:I

.field public mUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 153
    iput v0, p0, Lcom/android/settings/NotificationAppListSettings$AppItem;->mUid:I

    .line 157
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings$AppItem;->mLabel:Ljava/lang/String;

    const/4 p1, 0x1

    .line 158
    iput p1, p0, Lcom/android/settings/NotificationAppListSettings$AppItem;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/settings/NotificationAppListSettings$AppItem;->mPkgName:Ljava/lang/String;

    .line 163
    iput-object p2, p0, Lcom/android/settings/NotificationAppListSettings$AppItem;->mLabel:Ljava/lang/String;

    .line 164
    iput p3, p0, Lcom/android/settings/NotificationAppListSettings$AppItem;->mUid:I

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/android/settings/NotificationAppListSettings$AppItem;->mType:I

    return-void
.end method
