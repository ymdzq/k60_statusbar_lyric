.class public Lcom/android/settings/privacypassword/BussinessPackageInfoCache;
.super Ljava/lang/Object;
.source "BussinessPackageInfoCache.java"


# static fields
.field private static final FILE_PACKAGE_NAME:Ljava/lang/String;

.field private static sBussinessInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/privacypassword/BussinessPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sModifyandInstructions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static specificationInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/privacypassword/BussinessSpecificationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 12
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    const-string v0, "com.mi.android.globalFileexplorer"

    goto :goto_0

    :cond_0
    const-string v0, "com.android.fileexplorer"

    :goto_0
    move-object v5, v0

    sput-object v5, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->FILE_PACKAGE_NAME:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sBussinessInfos:Ljava/util/Map;

    .line 18
    new-instance v1, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    sget v7, Lcom/android/settings/R$string;->privacy_mms:I

    const-string/jumbo v13, "privacy_mms"

    invoke-direct {v1, v7, v13}, Lcom/android/settings/privacypassword/BussinessPackageInfo;-><init>(ILjava/lang/String;)V

    const-string v2, "com.android.mms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sBussinessInfos:Ljava/util/Map;

    new-instance v1, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    sget v15, Lcom/android/settings/R$string;->privacy_gallery:I

    const-string/jumbo v4, "privacy_gallery"

    invoke-direct {v1, v15, v4}, Lcom/android/settings/privacypassword/BussinessPackageInfo;-><init>(ILjava/lang/String;)V

    const-string v2, "com.miui.gallery"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sBussinessInfos:Ljava/util/Map;

    new-instance v1, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    sget v2, Lcom/android/settings/R$string;->privacy_file:I

    const-string/jumbo v3, "privacy_file"

    invoke-direct {v1, v2, v3}, Lcom/android/settings/privacypassword/BussinessPackageInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sBussinessInfos:Ljava/util/Map;

    new-instance v1, Lcom/android/settings/privacypassword/BussinessPackageInfo;

    sget v14, Lcom/android/settings/R$string;->privacy_notes:I

    const-string/jumbo v12, "privacy_notes"

    invoke-direct {v1, v14, v12}, Lcom/android/settings/privacypassword/BussinessPackageInfo;-><init>(ILjava/lang/String;)V

    const-string v6, "com.miui.notes"

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->specificationInfos:Ljava/util/Map;

    .line 30
    new-instance v1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    sget v8, Lcom/android/settings/R$string;->mms_privacy_password_role_instruction:I

    sget v9, Lcom/android/settings/R$drawable;->privacy_password_mms:I

    const-string v10, "com.android.mms"

    const/4 v11, 0x0

    const-string v16, "android.intent.action.MAIN"

    move-object v6, v1

    move-object/from16 v23, v12

    move-object/from16 v12, v16

    invoke-direct/range {v6 .. v12}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v13, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->specificationInfos:Ljava/util/Map;

    new-instance v1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    sget v16, Lcom/android/settings/R$string;->gallery_privacy_password_role_instruction:I

    sget v17, Lcom/android/settings/R$drawable;->privacy_password_gallery:I

    const-string v18, "com.miui.gallery"

    const/16 v19, 0x0

    const-string v20, "android.intent.action.MAIN"

    move v8, v14

    move-object v14, v1

    invoke-direct/range {v14 .. v20}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->specificationInfos:Ljava/util/Map;

    new-instance v9, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    sget v6, Lcom/android/settings/R$string;->file_privacy_password_role_instruction:I

    sget v7, Lcom/android/settings/R$drawable;->privacy_password_file:I

    const/4 v10, 0x0

    const-string v11, "android.intent.action.MAIN"

    move-object v1, v9

    move-object v12, v3

    move v3, v6

    move-object v14, v4

    move v4, v7

    move v6, v10

    move-object v7, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    invoke-interface {v0, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->specificationInfos:Ljava/util/Map;

    new-instance v1, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;

    sget v18, Lcom/android/settings/R$string;->notes_privacy_password_role_instruction:I

    sget v19, Lcom/android/settings/R$drawable;->privacy_password_notes:I

    const-string v20, "com.miui.notes"

    const/16 v21, 0x0

    const-string v22, "android.intent.action.MAIN"

    move-object/from16 v16, v1

    move/from16 v17, v8

    invoke-direct/range {v16 .. v22}, Lcom/android/settings/privacypassword/BussinessSpecificationInfo;-><init>(IIILjava/lang/String;ZLjava/lang/String;)V

    move-object/from16 v2, v23

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sModifyandInstructions:Ljava/util/Map;

    .line 46
    invoke-interface {v0, v13, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sModifyandInstructions:Ljava/util/Map;

    invoke-interface {v0, v14, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sModifyandInstructions:Ljava/util/Map;

    invoke-interface {v0, v12, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sModifyandInstructions:Ljava/util/Map;

    invoke-interface {v0, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBussinessPackageInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/privacypassword/BussinessPackageInfo;",
            ">;"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sBussinessInfos:Ljava/util/Map;

    return-object v0
.end method

.method public static getModifyandInstructionsInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->sModifyandInstructions:Ljava/util/Map;

    return-object v0
.end method

.method public static getSpcificationInfos()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/privacypassword/BussinessSpecificationInfo;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/android/settings/privacypassword/BussinessPackageInfoCache;->specificationInfos:Ljava/util/Map;

    return-object v0
.end method
