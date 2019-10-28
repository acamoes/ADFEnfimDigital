<?php
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Requisitos
 *
 * @author André Camões
 */
class Requisitos
{

    //put your code here

    public function __construct()
    {
        
    }
    public static function getRequisito($data)
    {
        $query = "SELECT 
        r.idRequirements as requisito,r.order,r.name, r.duration, r.purpose, r.task, r.documents, r.achievement,
        c.name as curso
        FROM course c INNER JOIN requirements r ON c.idCourse=r.idCourse
        WHERE r.idRequirements=".$data['idRequirements'];

        $con       = new Database();
        $resultado = $con->get($query);
        if (!$resultado) {
            return false;
        }
        return $resultado[0];
    }
   
    public static function getRequisitos($data)
    {
        $query = "SELECT r.idRequirements,c.idCourse,c.name as curso,r.order,r.name as requisito, r.status 
        FROM course c INNER JOIN requirements r ON c.idCourse=r.idCourse
        ORDER BY c.idCourse,r.order,r.idRequirements";

        // $query     = "SELECT r.idRequirements,c.sigla,c.name as curso,r.order,r.name as requisito,r.type,r.duration,r.status ".
        //     "FROM course c INNER JOIN requirements r ON c.idCourse=r.idCourse ".
        //     "WHERE (c.name LIKE '%".$data['search']."%' OR ".
        //     "c.sigla LIKE '%".$data['search']."%' OR ".
        //     "r.name LIKE '%".$data['search']."%' OR ".
        //     "r.type LIKE '%".$data['search']."%' OR ".
        //     "r.status LIKE '%".$data['search']."%') ".
        //     " ORDER BY c.idCourse,r.order,r.idRequirements";

        $con       = new Database();
        $resultado = $con->get($query);
        if (!$resultado) {
            return false;
        }
        return $resultado;
    }

    public static function apagarRequisitos($data): array
    {
        $query     = "UPDATE requirements SET status='Inativo' WHERE idRequirements=".$data['idRequirements']." ";
        $con       = new Database();
        $resultado = $con->set($query);
        if (!$resultado) {
            return ['success' => false, 'message' => 'O registo não foi alterado.'];
        }
        return ['success' => true, 'message' => 'Registo alterado.'];
    }

    public static function inserirRequisitos($data)
    {
        $query     = "INSERT INTO requirements ".
            "(idCourse,name,`order`,duration,status,observations,purpose,documents,achievement,task) ".
            "VALUES "."('".
            $data ['idCourse']."','".
            $data ['name']."',".
            $data ['order'].",'".
            $data ['duration']."','".
            $data ['status']."','".
            $data ['observations']."','".
            $data ['purpose']."','".
            $data ['documents']."','".
            $data ['achievements']."','".
            $data ['todo']."')";
        $con       = new Database();
        $resultado = $con->set($query);
        if (!$resultado) {
            return ['success' => false, 'message' => 'Não foi aceite o registo.'];
        }
        return ['success' => true, 'message' => 'Registo aceite.'];
    }

    public static function atualizarRequisitos($data)
    {
        $query     = "UPDATE requirements SET ".
            "idCourse=".$data ['idCourse'].",".
            "name='".$data ['name']."',".
            "`order`=".$data ['order'].",'".
            "duration=".$data ['duration'].",".
            "observations=".$data ['observations'].",".
            "purpose=".$data ['purpose'].",".
            "documents=".$data ['documents'].",".
            "achievements=".$data ['achievements'].",".
            "todo=".$data ['todo'].",".
            "status='".$data ['status']."' ".
            "WHERE idRequirements=".$data ['idRequirements'];
        $con       = new Database();
        $resultado = $con->set($query);
        if (!$resultado) {
            return ['success' => false, 'message' => 'Não foi aceite o registo.'];
        }
        return ['success' => true, 'message' => 'Registo aceite.'];
    }
}