.class public Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;
.super Ljava/lang/Object;
.source "DiagnosisLog.java"


# static fields
.field private static sLogger:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/xiaomi/accountsdk/diagnosis/EmptyDiagnosisLogger;

    invoke-direct {v0}, Lcom/xiaomi/accountsdk/diagnosis/EmptyDiagnosisLogger;-><init>()V

    sput-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;->sLogger:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    return-void
.end method

.method public static get()Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLog;->sLogger:Lcom/xiaomi/accountsdk/diagnosis/DiagnosisLogInterface;

    return-object v0
.end method
