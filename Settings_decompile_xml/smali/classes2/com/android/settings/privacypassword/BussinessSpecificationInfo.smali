.class public Lcom/android/settings/privacypassword/BussinessSpecificationInfo;
.super Ljava/lang/Object;
.source "BussinessSpecificationInfo.java"


# instance fields
.field public final actionBarTitle:I

.field public final intentAction:Ljava/lang/String;

.field public final isGone:Z

.field public final specificImage:I

.field public final specificText:I

.field public final startPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->actionBarTitle:I

    .line 14
    iput p2, p0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->specificText:I

    .line 15
    iput p3, p0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->specificImage:I

    .line 16
    iput-object p4, p0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->startPackage:Ljava/lang/String;

    .line 17
    iput-boolean p5, p0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->isGone:Z

    .line 18
    iput-object p6, p0, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;->intentAction:Ljava/lang/String;

    return-void
.end method
