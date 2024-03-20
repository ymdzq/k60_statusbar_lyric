.class public Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;
.super Ljava/lang/Object;
.source "CommonIconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/device/CommonIconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemInfo"
.end annotation


# instance fields
.field mIconResId:I

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;->mName:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/android/settings/device/CommonIconListAdapter$ItemInfo;->mIconResId:I

    return-void
.end method
