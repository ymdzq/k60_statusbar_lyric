.class public Lcom/android/settings/bootloader/Utils$RetType;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bootloader/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetType"
.end annotation


# instance fields
.field public retCode:I

.field public retMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 92
    iput v0, p0, Lcom/android/settings/bootloader/Utils$RetType;->retCode:I

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/android/settings/bootloader/Utils$RetType;->retMsg:Ljava/lang/String;

    return-void
.end method
