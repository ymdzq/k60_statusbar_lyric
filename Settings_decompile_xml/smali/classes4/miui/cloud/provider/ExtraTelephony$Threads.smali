.class public final Lmiui/cloud/provider/ExtraTelephony$Threads;
.super Lmiui/cloud/provider/ExtraTelephony$ThreadsColumns;
.source "ExtraTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/cloud/provider/ExtraTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 184
    invoke-direct {p0}, Lmiui/cloud/provider/ExtraTelephony$ThreadsColumns;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
