.class public Lmiui/cloud/app/ExistingPackageInstaller;
.super Ljava/lang/Object;
.source "ExistingPackageInstaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/cloud/app/ExistingPackageInstaller$InstallPackageNotFoundException;,
        Lmiui/cloud/app/ExistingPackageInstaller$InstallPackageFailedException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Stub!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static installExistingPackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/cloud/app/ExistingPackageInstaller$InstallPackageFailedException;,
            Lmiui/cloud/app/ExistingPackageInstaller$InstallPackageNotFoundException;
        }
    .end annotation

    .line 15
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Stub!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
